
cluster 'petclinic-preprod', {
  definitionParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/deployment-cluster',
    'namespace': 'petclinic',
  ]
  environmentName = 'PreProduction'
  pluginKey = 'EC-Helm'
  projectName = 'Petclinic'
}
