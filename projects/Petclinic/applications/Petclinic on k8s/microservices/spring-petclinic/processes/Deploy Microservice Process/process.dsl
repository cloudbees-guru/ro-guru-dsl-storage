
process 'Deploy Microservice Process', {
  description = 'System generated process for microservice deployment'
  microserviceName = 'spring-petclinic'
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimit = '0'

  processStep 'Retrieve Artifact', {
    description = 'System generated step to retrieve microservice definition artifact'
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Source Provider'
    subproject = '/plugins/EC-Helm/project'
  }

  processStep 'Deploy Microservice', {
    description = 'System generated step to deploy microservice'
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Deploy Service'
    subproject = '/plugins/EC-Helm/project'
  }

  processDependency 'Retrieve Artifact', targetProcessStepName: 'Deploy Microservice'
}
