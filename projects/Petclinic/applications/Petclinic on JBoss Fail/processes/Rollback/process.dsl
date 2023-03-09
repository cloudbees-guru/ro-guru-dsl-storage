
process 'Rollback', {
  applicationName = 'Petclinic on JBoss Fail'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'Petclinic'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'Rollback', {
    dependencyJoinType = 'and'
    processStepType = 'rollback'
    projectName = 'Petclinic'
    rollbackType = 'environment'
    smartRollback = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
