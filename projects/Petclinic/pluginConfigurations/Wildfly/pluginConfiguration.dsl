
pluginConfiguration 'Wildfly', {
  description = 'WildFly server on http://34.79.227.33:8080/'
  credentialReferenceParameter = [
    'credential': '/projects/Petclinic/credentials/WildFly',
  ]
  field = [
    'credential': 'credential',
    'jboss_url': 'wildfly-vm.c.cloudbees-sa-emea-demo.internal',
    'log_level': '1',
    'scriptphysicalpath': '/opt/jboss/wildfly/bin/jboss-cli.sh',
    'test_connection_res': 'wildfly-vm.c.cloudbees-sa-emea-demo.internal',
  ]
  pluginKey = 'EC-JBoss'
  projectName = 'Petclinic'
}
