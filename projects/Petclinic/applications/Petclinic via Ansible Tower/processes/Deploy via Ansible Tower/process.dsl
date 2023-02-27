
process 'Deploy via Ansible Tower', {
  applicationName = 'Petclinic via Ansible Tower'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
  projectName = 'Petclinic'
  timeLimitUnits = 'minutes'

  formalParameter 'petclinicVersion', defaultValue: '', {
    description = 'Version of Petclinic to be deployed'
    expansionDeferred = '0'
    label = 'Petclinic Version'
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

def nexusResponse = new URL(\'https://nexus.cloudbees.guru:8081/service/rest/v1/search?repository=shared-demos&group=org.springframework.samples&name=spring-petclinic\').text;
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

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic via Ansible Tower/components/Database/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic via Ansible Tower/components/Webapp/ec_content_details/versionRange]', {
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

  processStep 'Deploy Database', {
    alwaysRun = '0'
    applicationTierName = 'Database'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic via Ansible Tower'
    subcomponentProcess = 'Deploy on MySQL via Ansible Tower'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Deploy Webapp', {
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic via Ansible Tower'
    subcomponentProcess = 'Deploy webapp via Ansible Tower'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Rollback', {
    description = 'Rollback if deployment failed'
    alwaysRun = '0'
    componentRollback = '0'
    dependencyJoinType = 'or'
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

  processDependency 'Deploy Webapp', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }

  processDependency 'Deploy Database', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }
}
