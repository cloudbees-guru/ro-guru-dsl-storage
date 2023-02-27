
pluginConfiguration 'ServiceNow - ven01735.service-now.com', {
  description = 'ServiceNow - ven01735.service-now.com'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/ServiceNow - ven01735',
  ]
  field = [
    'credential': 'credential',
    'debug_level': '0',
    'host': 'https://ven01735.service-now.com',
    'ignoreSSLErrors': '0',
    'use_native_extension': '1',
  ]
  pluginKey = 'EC-ServiceNow'
  projectName = 'Petclinic'
}
