
pluginConfiguration 'CloudBees Feature Management', {
  description = 'CloudBees Feature Management connection using fgibelin\'s User Token'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/CloudBees Feature Management - fgibelin',
  ]
  field = [
    'credential': 'credential',
    'debugLevel': '0',
  ]
  pluginKey = 'EC-FeatureFlags'
  projectName = 'Petclinic'
}
