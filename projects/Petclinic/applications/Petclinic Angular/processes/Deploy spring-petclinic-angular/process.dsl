
process 'Deploy spring-petclinic-angular', {
  applicationName = 'Petclinic Angular'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimitUnits = 'minutes'

  formalParameter 'FMenvironmentKey', {
    expansionDeferred = '0'
    label = 'CBFM Environment Key'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_REST backend-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_REST backend-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic Angular/components/REST backend/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_Spring Petclinic Angular-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Spring Petclinic Angular-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic Angular/components/Spring Petclinic Angular/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'Deploy REST backend', {
    alwaysRun = '0'
    applicationTierName = 'Petclinic'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'REST backend'
    subcomponentApplicationName = 'Petclinic Angular'
    subcomponentProcess = 'Deploy REST backend'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Deploy Spring Petclinic Angular', {
    alwaysRun = '0'
    applicationTierName = 'Petclinic'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Spring Petclinic Angular'
    subcomponentApplicationName = 'Petclinic Angular'
    subcomponentProcess = 'Deploy Spring Petclinic Angular'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Rollback', {
    alwaysRun = '0'
    componentRollback = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'rollback'
    projectName = 'Petclinic'
    rollbackType = 'environment'
    rollbackUndeployProcess = ''
    skipRollbackIfUndeployFails = '0'
    smartRollback = '1'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processDependency 'Deploy REST backend', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }

  processDependency 'Deploy Spring Petclinic Angular', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }
}
