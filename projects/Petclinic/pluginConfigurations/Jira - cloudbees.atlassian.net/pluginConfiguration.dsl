
pluginConfiguration 'Jira - cloudbees.atlassian.net', {
  description = 'CloudBees Jira instance (https://cloudbees.atlassian.net/)'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/Atlassian - fgibelin',
  ]
  field = [
    'auth': 'basic',
    'credential': 'credential',
    'debugLevel': '2',
    'ignoreSSLErrors': '0',
    'url': 'https://cloudbees.atlassian.net/',
  ]
  pluginKey = 'EC-JIRA'
  projectName = 'Petclinic'
}
