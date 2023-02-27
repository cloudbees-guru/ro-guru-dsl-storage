
cluster 'petclinic-integration', {
  description = 'deployment-cluster-1 in GKE'
  definitionParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/deployment-cluster',
    'namespace': 'petclinic',
  ]
  environmentName = 'Integration'
  pluginKey = 'EC-Helm'
  projectName = 'Petclinic'
}
