
pluginConfiguration 'Examples Library', {
  field = [
    'authType': 'password',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLErrors': 'false',
    'library': 'jgit',
    'repositoryURL': 'https://github.com/cloudbees-guru/cd-examples-library.git',
  ]
  pluginKey = 'EC-Git'
  projectName = 'Guru'

  addCredential 'credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Guru'
    userName = 'asd'
  }
}
