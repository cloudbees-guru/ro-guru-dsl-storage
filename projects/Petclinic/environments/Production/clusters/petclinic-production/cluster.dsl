
cluster 'petclinic-production', {
  description = 'deployment-cluster-1 in GKE'
  definitionParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/deployment-cluster',
    'namespace': 'petclinic',
  ]
  environmentName = 'Production'
  pluginKey = 'EC-Helm'
  projectName = 'Petclinic'
}
