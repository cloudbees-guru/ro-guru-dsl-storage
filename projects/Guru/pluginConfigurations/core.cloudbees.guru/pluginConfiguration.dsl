
pluginConfiguration 'core.cloudbees.guru', {
  field = [
    'authType': 'basic',
    'baseUrl': 'https://core.cloudbees.guru',
    'configRequestType': 'GET',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLIssues': 'false',
  ]
  pluginKey = 'EC-Rest'
  projectName = 'Guru'

  addCredential 'credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Guru'
    userName = 'admin'
  }
}
