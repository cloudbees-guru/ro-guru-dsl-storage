
process 'Undeploy via Ansible Tower', {
  applicationName = 'Petclinic via Ansible Tower'
  exclusiveEnvironment = '0'
  processType = 'OTHER'
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

  formalParameter 'ec_Database-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic via Ansible Tower/components/Database/ec_content_details/versionRange]', {
    expansionDeferred = '1'
    type = 'entry'
  }

  formalParameter 'ec_Webapp-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_Webapp-version', defaultValue: '$[/projects/Petclinic/applications/Petclinic via Ansible Tower/components/Webapp/ec_content_details/versionRange]', {
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

  processStep 'Undeploy database', {
    applicationTierName = 'Database'
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Database'
    subcomponentApplicationName = 'Petclinic via Ansible Tower'
    subcomponentProcess = 'Undeploy from MySQL via Ansible Tower'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }

  processStep 'Undeploy webapp', {
    applicationTierName = 'Frontend'
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    subcomponent = 'Webapp'
    subcomponentApplicationName = 'Petclinic via Ansible Tower'
    subcomponentProcess = 'Undeploy webapp via Ansible Tower'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
