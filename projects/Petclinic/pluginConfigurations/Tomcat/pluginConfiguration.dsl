
pluginConfiguration 'Tomcat', {
  description = 'Tomcat server on http://35.233.0.196/'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/Tomcat',
  ]
  field = [
    'credential': 'credential',
    'debugLevel': '1',
    'tomcat_home': '/opt/tomcat',
    'tomcat_url': 'http://localhost',
  ]
  pluginKey = 'EC-Tomcat'
  projectName = 'Petclinic'
}
