
pluginConfiguration 'deployment-cluster', {
  field = [
    'checkConnectionResource': 'petclinic.c.cloudbees-sa-emea-demo.internal',
    'createKubeconfig': '1',
    'debugLevel': '0',
    'helmPath': '/usr/local/bin/helm',
    'helmVersion': '3',
    'kubeconfigContent_credential': 'kubeconfigContent_credential',
    'kubectlExecutablePath': '/usr/local/bin/kubectl',
  ]
  pluginKey = 'EC-Helm'
  projectName = 'Petclinic'

  addCredential 'kubeconfigContent_credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Petclinic'
  }
}
