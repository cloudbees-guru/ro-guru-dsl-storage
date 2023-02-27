
pluginConfiguration 'CloudBees CI - Shared Demos', {
  description = 'CloudBees CI Guru - Shared Demos controller'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/CloudBees CI - flow',
  ]
  field = [
    'checkConnectionResource': 'local',
    'credential': 'credential',
    'debug_level': '0',
    'ignoreSSLErrors': '1',
    'jobs_location': 'shared-demos',
    'server': 'https://core.cloudbees.guru/',
  ]
  pluginKey = 'EC-Jenkins'
  projectName = 'Petclinic'
}
