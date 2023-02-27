
pluginConfiguration 'Nexus', {
  description = 'CloudBees Guru Nexus repository'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/SonarQube admin',
  ]
  field = [
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLErrors': '1',
    'instance': 'https://nexus.cloudbees.guru:8081/',
    'nexusVersionOverride': '2',
  ]
  pluginKey = 'EC-Nexus'
  projectName = 'Petclinic'
}
