
cluster 'petclinic-uat', {
  definitionParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/deployment-cluster',
    'namespace': 'petclinic',
  ]
  environmentName = 'UAT'
  pluginKey = 'EC-Helm'
  projectName = 'Petclinic'
}
