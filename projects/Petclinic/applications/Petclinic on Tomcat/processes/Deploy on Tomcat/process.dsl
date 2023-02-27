
process 'Deploy on Tomcat', {
  applicationName = 'Petclinic on Tomcat'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimitUnits = 'minutes'

  formalParameter 'petclinicVersion', defaultValue: '', {
    expansionDeferred = '0'
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
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on Tomcat/components/Database/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on Tomcat/components/Webapp/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'Is application deployed ?', {
    description = 'Checks if the application is currently deployed in Tomcat'
    actualParameter = [
      'tomcatContext': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'tomcatCredentials': '/projects/Petclinic/credentials/Tomcat',
    ]
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Check if Petclinic is deployed on Tomcat'
    subproject = 'Petclinic'
    useUtilityResource = '0'

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
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Undeploy webapp from Tomcat'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Undeploy database', {
    alwaysRun = '0'
    applicationTierName = 'Database'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Undeploy from MySQL'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Deploy database', {
    alwaysRun = '0'
    applicationTierName = 'Database'
    dependencyJoinType = 'or'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Deploy on MySQL'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Deploy webapp', {
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic on Tomcat'
    subcomponentProcess = 'Deploy webapp on Tomcat'
    useUtilityResource = '0'

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
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Check if Petclinic is deployed on Tomcat'
    subproject = 'Petclinic'
    useUtilityResource = '0'

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
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'rollback'
    projectName = 'Petclinic'
    rollbackType = 'environment'
    rollbackUndeployProcess = ''
    skipRollbackIfUndeployFails = '0'
    smartRollback = '1'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processDependency 'Deploy webapp', targetProcessStepName: 'Smoke test', {
    branchType = 'ALWAYS'
  }

  processDependency 'Undeploy application', targetProcessStepName: 'Undeploy database', {
    branchType = 'ALWAYS'
  }

  processDependency 'Undeploy database', targetProcessStepName: 'Deploy database', {
    branchType = 'ALWAYS'
  }

  processDependency 'Is application deployed ?', targetProcessStepName: 'Deploy database', {
    branchCondition = 'myProject.applications[\'Petclinic on Tomcat\'].processes[\'Deploy on Tomcat\'].properties[\'/myJob/applicationExists\']==\'1\''
    branchConditionName = 'No'
    branchConditionType = 'VALUE'
    branchType = 'ALWAYS'
  }

  processDependency 'Deploy database', targetProcessStepName: 'Deploy webapp', {
    branchType = 'ALWAYS'
  }

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
    branchType = 'ALWAYS'
  }
}
