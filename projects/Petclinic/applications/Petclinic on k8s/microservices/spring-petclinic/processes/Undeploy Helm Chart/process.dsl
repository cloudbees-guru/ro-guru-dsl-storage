
process 'Undeploy Helm Chart', {
  description = 'Sample application model to deploy Petclinic on Kubernetes with Helm'
  microserviceName = 'spring-petclinic'
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimitUnits = 'seconds'
  workspaceName = 'default'

  processStep 'helm undeploy', {
    actualParameter = [
      'actionOnError': '0',
      'config': '$[/myJob/ec_microservice_deployment_parameters/$[/myMicroservice]/clusterDefinition/config]',
      'errorValue': '',
      'options': '',
      'releaseName': '$[/myJob/ec_microservice_deployment_parameters/$[/myMicroservice]/deployParameters/releaseName]',
      'resultPropertySheet': '/myJob/deleteRelease',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Delete Release'
    subproject = '/plugins/EC-Helm/project'
    useUtilityResource = '0'
  }
}
