
process 'Deploy on JBoss', {
  applicationName = 'Petclinic on JBoss Fail'
  exclusiveEnvironment = '1'
  processType = 'DEPLOY'
  projectName = 'Petclinic'

  formalParameter 'petclinicVersion', {
    label = 'Petclinic version'
    orderIndex = '1'
    propertyReference = '$[/projects/Petclinic/myArtifactVersions]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_Database-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on JBoss Fail/components/Database/ec_content_details/version]', {
    expansionDeferred = '1'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on JBoss Fail/components/Webapp/ec_content_details/version]', {
    expansionDeferred = '1'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'Check if application is deployed', {
    actualParameter = [
      'jbossConfiguration': '/projects/Petclinic/pluginConfigurations/Wildfly',
      'jbossDeployment': 'petclinic-$[petclinicVersion]-$[/myEnvironment]',
    ]
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Check if Petclinic is deployed on JBoss'
    subproject = 'Petclinic'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'MySQL', {
    applicationTierName = 'Database'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic on JBoss Fail'
    subcomponentProcess = 'Deploy on MySQL'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'JBoss', {
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic on JBoss Fail'
    subcomponentProcess = 'Deploy webapp on JBoss'
    workspaceName = ''

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Rollback', {
    alwaysRun = '1'
    componentRollback = '0'
    dependencyJoinType = 'and'
    processStepType = 'rollback'
    projectName = 'Petclinic'
    rollbackType = 'environment'
    skipRollbackIfUndeployFails = '0'
    smartRollback = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processDependency 'Check if application is deployed', targetProcessStepName: 'MySQL'

  processDependency 'JBoss', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }

  processDependency 'Check if application is deployed', targetProcessStepName: 'JBoss'

  processDependency 'MySQL', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }
}
