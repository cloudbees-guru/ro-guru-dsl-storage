
tierMap 'a6eac9b7-8a7e-11ec-9c1e-42010a840017', {
  applicationName = 'Petclinic on k8s'
  environmentName = 'Production'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  microserviceMapping 'bbde40b3-8a7e-11ec-93cf-42010a840017', {
    clusterName = 'petclinic-production'
    clusterProjectName = 'Petclinic'
    microserviceName = 'spring-petclinic'
    tierMapName = 'a6eac9b7-8a7e-11ec-9c1e-42010a840017'
  }
}
