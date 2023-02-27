
process 'Deploy on JBoss', {
  applicationName = 'Petclinic on JBoss'
  exclusiveEnvironment = '1'
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimitUnits = 'minutes'

  formalParameter 'petclinicVersion', {
    expansionDeferred = '0'
    label = 'Petclinic version'
    orderIndex = '1'
    propertyReference = '$[/projects/Petclinic/myArtifactVersions]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_Database-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on JBoss/components/Database/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic on JBoss/components/Webapp/ec_content_details/version]', {
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

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'Check if application is deployed', {
    actualParameter = [
      'jbossConfiguration': '/projects/Petclinic/pluginConfigurations/Wildfly',
      'jbossDeployment': 'petclinic-$[petclinicVersion]-$[/myEnvironment]',
    ]
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Check if Petclinic is deployed on JBoss'
    subproject = 'Petclinic'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'MySQL', {
    alwaysRun = '0'
    applicationTierName = 'Database'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic on JBoss'
    subcomponentProcess = 'Deploy on MySQL'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'JBoss', {
    alwaysRun = '0'
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic on JBoss'
    subcomponentProcess = 'Deploy webapp on JBoss'
    useUtilityResource = '0'
    workspaceName = ''

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Rollback', {
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'rollback'
    projectName = 'Petclinic'
    rollbackType = 'environment'
    smartRollback = '1'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processDependency 'Check if application is deployed', targetProcessStepName: 'MySQL', {
    branchType = 'ALWAYS'
  }

  processDependency 'JBoss', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }

  processDependency 'Check if application is deployed', targetProcessStepName: 'JBoss', {
    branchType = 'ALWAYS'
  }

  processDependency 'MySQL', targetProcessStepName: 'Rollback', {
    branchType = 'ERROR'
  }
}
