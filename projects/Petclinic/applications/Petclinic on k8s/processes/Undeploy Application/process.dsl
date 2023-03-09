
process 'Undeploy Application', {
  applicationName = 'Petclinic on k8s'
  exclusiveEnvironment = '0'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'

  formalParameter 'ec_spring-petclinic-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'asd', {
    dependencyJoinType = 'and'
    processStepType = 'process'
    projectName = 'Petclinic'
    submicroservice = 'spring-petclinic'
    submicroserviceProcess = 'Undeploy Helm Chart'
    useUtilityResource = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
