
process 'Deploy Microservice Process', {
  description = 'System generated process for microservice deployment'
  microserviceName = 'spring-petclinic'
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimit = '0'
  timeLimitUnits = 'minutes'

  processStep 'Retrieve Artifact', {
    description = 'System generated step to retrieve microservice definition artifact'
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Source Provider'
    subproject = '/plugins/EC-Helm/project'
    useUtilityResource = '0'
  }

  processStep 'Deploy Microservice', {
    description = 'System generated step to deploy microservice'
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Deploy Service'
    subproject = '/plugins/EC-Helm/project'
    useUtilityResource = '0'
  }

  processDependency 'Retrieve Artifact', targetProcessStepName: 'Deploy Microservice', {
    branchType = 'ALWAYS'
  }
}
