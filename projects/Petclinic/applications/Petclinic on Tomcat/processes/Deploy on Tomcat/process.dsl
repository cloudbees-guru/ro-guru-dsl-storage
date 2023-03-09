
process 'Deploy on Tomcat', {
  applicationName = 'Petclinic on Tomcat'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'Petclinic'

  formalParameter 'petclinicVersion', defaultValue: '', {
    label = 'Petclinic version'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult
import groovy.json.JsonSlurper
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import javax.net.ssl.HttpsURLConnection;

class TrustManager implements X509TrustManager {
  public java.security.cert.X509Certificate[] getAcceptedIssuers() { return null;  }
  public void checkClientTrusted(java.security.cert.X509Certificate[] certs, String authType) { }
  public void checkServerTrusted(java.security.cert.X509Certificate[] certs, String authType) { }
}

TrustManager[] trustAllCerts = new TrustManager[1]
trustAllCerts[0] = new TrustManager()
SSLContext sc = SSLContext.getInstance("SSL");
sc.init(null, trustAllCerts, new java.security.SecureRandom());
HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

def nexusResponse = new URL(\'https://nexus.cloudbees.guru:8081/service/rest/v1/search?repository=shared-demos&group=org.springframework.samples&name=spring-petclinic&sort=version\').text;
def options = new FormalParameterOptionsResult()
def jsonSlurper = new JsonSlurper()
for (entry in jsonSlurper.parseText(nexusResponse).get("items")) {
  options.add(/*value*/ entry.version,
              /*displayString*/ entry.version)
}
return options'''
    orderIndex = '1'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_Database-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on Tomcat/components/Database/ec_content_details/version]', {
    expansionDeferred = '1'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on Tomcat/components/Webapp/ec_content_details/version]', {
    expansionDeferred = '1'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'Is application deployed ?', {
    description = 'Checks if the application is currently deployed in Tomcat'
    actualParameter = [
      'tomcatContext': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'tomcatCredentials': '/projects/Petclinic/credentials/Tomcat',
    ]
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Check if Petclinic is deployed on Tomcat'
    subproject = 'Petclinic'

    attachCredential {
      credentialName = '/projects/Petclinic/credentials/Tomcat'
    }

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Undeploy application', {
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Undeploy webapp from Tomcat'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Undeploy database', {
    applicationTierName = 'Database'
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Undeploy from MySQL'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Deploy database', {
    applicationTierName = 'Database'
    dependencyJoinType = 'or'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Deploy on MySQL'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Deploy webapp', {
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Deploy webapp on Tomcat'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Smoke test', {
    actualParameter = [
      'tomcatContext': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'tomcatCredentials': '/projects/Petclinic/credentials/Tomcat',
    ]
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Check if Petclinic is deployed on Tomcat'
    subproject = 'Petclinic'

    attachCredential {
      credentialName = '/projects/Petclinic/credentials/Tomcat'
    }

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Rollback', {
    description = 'Rollback if deployment failed'
    dependencyJoinType = 'and'
    processStepType = 'rollback'
    projectName = 'Petclinic'
    rollbackType = 'environment'
    rollbackUndeployProcess = ''
    skipRollbackIfUndeployFails = '0'
    smartRollback = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processDependency 'Deploy webapp', targetProcessStepName: 'Smoke test'

  processDependency 'Undeploy application', targetProcessStepName: 'Undeploy database'

  processDependency 'Undeploy database', targetProcessStepName: 'Deploy database'

  processDependency 'Is application deployed ?', targetProcessStepName: 'Deploy database', {
    branchCondition = 'myProject.applications[\'Petclinic on Tomcat\'].processes[\'Deploy on Tomcat\'].properties[\'/myJob/applicationExists\']==\'1\''
    branchConditionName = 'No'
    branchConditionType = 'VALUE'
  }

  processDependency 'Deploy database', targetProcessStepName: 'Deploy webapp'

  processDependency 'Smoke test', targetProcessStepName: 'Rollback', {
    branchCondition = 'myProject.applications[\'Petclinic on Tomcat\'].processes[\'Deploy on Tomcat\'].properties[\'/myJob/applicationExists\']==\'1\''
    branchConditionName = 'Failed'
    branchConditionType = 'VALUE'
    branchType = 'ERROR'
  }

  processDependency 'Is application deployed ?', targetProcessStepName: 'Undeploy application', {
    branchCondition = 'myProject.applications[\'Petclinic on Tomcat\'].processes[\'Deploy on Tomcat\'].properties[\'/myJob/applicationExists\']==\'0\''
    branchConditionName = 'Yes'
    branchConditionType = 'VALUE'
  }
}
