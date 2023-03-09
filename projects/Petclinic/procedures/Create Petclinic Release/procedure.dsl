
procedure 'Create Petclinic Release', {
  projectName = 'Petclinic'
  resourceName = 'local'
  timeLimit = '0'

  formalParameter 'RELEASE SETTINGS', {
    orderIndex = '1'
    type = 'header'
  }

  formalParameter 'releaseStartDate', defaultValue: '', {
    label = 'Release Start Date'
    orderIndex = '2'
    required = '1'
    type = 'date'
  }

  formalParameter 'releaseEndDate', {
    label = 'Release End Date'
    orderIndex = '3'
    required = '1'
    type = 'date'
  }

  formalParameter 'releaseProjName', defaultValue: 'Petclinic', {
    label = 'Project Name'
    orderIndex = '4'
    required = '1'
    type = 'project'
  }

  formalParameter 'DEPLOYMENT SETTINGS', {
    orderIndex = '5'
    type = 'header'
  }

  formalParameter 'petclinicVersion', defaultValue: '2.7.0-SNAPSHOT', {
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

def nexusResponse = new URL(\'https://nexus.cloudbees.guru:8081/service/rest/v1/search?repository=shared-demos&group=org.springframework.samples&name=spring-petclinic\').text;
def options = new FormalParameterOptionsResult()
def jsonSlurper = new JsonSlurper()
for (entry in jsonSlurper.parseText(nexusResponse).get("items")) {
  options.add(/*value*/ entry.version,
              /*displayString*/ entry.version)
}
return options'''
    orderIndex = '6'
    required = '1'
    type = 'select'
  }

  formalParameter 'deployToTomcat', {
    checkedValue = 'true'
    label = 'Deploy to Tomcat'
    orderIndex = '7'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'deployToJBoss', {
    checkedValue = 'true'
    label = 'Deploy to JBoss'
    orderIndex = '8'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'deployViaAnsibleTower', defaultValue: 'false', {
    checkedValue = 'true'
    label = 'Deploy via Ansible Tower / AWX'
    orderIndex = '9'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'deployToK8s', defaultValue: 'false', {
    checkedValue = 'true'
    label = 'Deploy to K8s'
    orderIndex = '10'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'Analytics', {
    label = 'Analytics'
    orderIndex = '11'
    type = 'header'
  }

  formalParameter 'configureRCC', defaultValue: 'false', {
    checkedValue = 'true'
    label = 'Configure Release Command Center'
    orderIndex = '12'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'RCCpollingFrequency', defaultValue: '30', {
    description = 'Time (in minutes) between polls'
    label = 'Command Center polling frequency'
    orderIndex = '13'
    renderCondition = '${configureRCC} == true'
    type = 'entry'
  }
}
