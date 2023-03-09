
microservice 'spring-petclinic', {
  applicationName = 'Petclinic on k8s'
  definitionSource = 'helm_repository'
  definitionSourceParameter = [
    'repositoryName': 'bitnami',
    'repositoryUrl': 'https://charts.bitnami.com/bitnami',
  ]
  definitionType = 'helm'
  deployParameter = [
    'chart': 'tomcat',
    'releaseName': 'tomcat',
    'version': '',
  ]
  projectName = 'Petclinic'
  rollbackParameter = [
    'rollbackEnabled': 'true',
    'waitTimeout': '900',
  ]
}
