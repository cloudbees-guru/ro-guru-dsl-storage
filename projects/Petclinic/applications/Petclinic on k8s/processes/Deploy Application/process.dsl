
process 'Deploy Application', {
  description = 'System generated process for microservice application'
  applicationName = 'Petclinic on k8s'
  processType = 'DEPLOY'
  projectName = 'Petclinic'

  formalParameter 'petclinicVersion', {
    label = 'Petclinic Version'
    orderIndex = '1'
    propertyReference = '$[/myProject/myArtifactVersions]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_spring-petclinic-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'spring-petclinic', {
    description = 'System generated step to invoke microservice process'
    processStepType = 'process'
    projectName = 'Petclinic'
    submicroservice = 'spring-petclinic'
    submicroserviceProcess = 'Deploy Microservice Process'
    useUtilityResource = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
