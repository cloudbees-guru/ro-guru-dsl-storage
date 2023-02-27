
pluginConfiguration 'Jira - cbdemo', {
  description = 'cbdemo Jira instance (https://cbdemo.atlassian.net/)'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/Atlassian - fgibelin',
  ]
  field = [
    'auth': 'basic',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLErrors': '0',
    'url': 'https://cbdemo.atlassian.net/',
  ]
  pluginKey = 'EC-JIRA'
  projectName = 'Petclinic'
}
