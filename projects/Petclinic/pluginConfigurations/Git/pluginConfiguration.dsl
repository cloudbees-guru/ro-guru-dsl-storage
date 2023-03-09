
pluginConfiguration 'Git', {
  description = 'CloudBees Guru GitHub organization using fgibelin account'
  field = [
    'authType': 'token',
    'debugLevel': '0',
    'ignoreSSLErrors': 'true',
    'library': 'jgit',
    'repositoryURL': 'https://github.com/cloudbees-guru/spring-petclinic-angular-casc.git',
    'token_credential': 'token_credential',
  ]
  pluginKey = 'EC-Git'
  projectName = 'Petclinic'

  addCredential 'token_credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Petclinic'
  }
}
