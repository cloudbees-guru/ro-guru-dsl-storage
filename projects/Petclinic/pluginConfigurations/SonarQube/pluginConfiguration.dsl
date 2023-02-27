
pluginConfiguration 'SonarQube', {
  description = 'CloudBees Guru SonarQube instance'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/SonarQube admin',
  ]
  field = [
    'authType': 'credential',
    'checkConnectionResource': 'local',
    'credential': 'credential',
    'debugLevel': '1',
    'host': 'sonar.cloudbees.guru',
    'ignoreSSLErrors': '0',
    'port': '9000',
    'protocol': 'https',
  ]
  pluginKey = 'EC-SonarQube'
  projectName = 'Petclinic'
}
