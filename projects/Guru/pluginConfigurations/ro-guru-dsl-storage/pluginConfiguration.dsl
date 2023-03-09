
pluginConfiguration 'ro-guru-dsl-storage', {
  description = 'config for git repo ro-guru-dsl-storage'
  field = [
    'authType': 'password',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLErrors': 'true',
    'library': 'jgit',
    'repositoryURL': 'https://github.com/cloudbees-guru/ro-guru-dsl-storage',
  ]
  pluginKey = 'EC-Git'
  projectName = 'Guru'

  addCredential 'credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Guru'
    userName = 'asd'
  }
}
