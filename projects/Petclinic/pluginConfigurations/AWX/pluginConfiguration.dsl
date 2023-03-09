
pluginConfiguration 'AWX', {
  description = 'AWX instance hosted on https://awx.cloudbees.guru/'
  credentialReferenceParameter = [
    'basic_credential': '/projects/Petclinic/credentials/AWX - ro',
  ]
  field = [
    'authScheme': 'basic',
    'basic_credential': 'basic_credential',
    'debugLevel': '0',
    'endpoint': 'https://awx.cloudbees.guru/',
    'ignoreSSLIssues': 'true',
  ]
  pluginKey = 'EC-AnsibleTower'
  projectName = 'Petclinic'
}
