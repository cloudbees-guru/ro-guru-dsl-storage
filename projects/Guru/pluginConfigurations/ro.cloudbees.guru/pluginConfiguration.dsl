
pluginConfiguration 'ro.cloudbees.guru', {
  field = [
    'authType': 'basic',
    'baseUrl': 'https://ro.cloudbees.guru/rest/v1.0/',
    'configRequestType': 'GET',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLIssues': 'false',
    'protocolCustom': 'false',
    'protocolHTTP11': 'false',
    'protocolHTTP20': 'false',
    'protocolHTTP20PK': 'false',
  ]
  pluginKey = 'EC-Rest'
  projectName = 'Guru'

  addCredential 'credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Guru'
    userName = 'admin'
  }
}
