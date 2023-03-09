
process 'Undeploy via CloudBees CI', {
  applicationName = 'Petclinic via CloudBees CI'
  exclusiveEnvironment = '0'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'

  formalParameter 'petclinicVersion', {
    description = 'Select version to undeploy'
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

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic via CloudBees CI/components/Database/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic via CloudBees CI/components/Webapp/ec_content_details/versionRange]', {
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

  processStep 'Undeploy Petclinic', {
    applicationTierName = 'Petclinic'
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic via CloudBees CI'
    subcomponentProcess = 'Undeploy webapp via CloudBees CI'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
