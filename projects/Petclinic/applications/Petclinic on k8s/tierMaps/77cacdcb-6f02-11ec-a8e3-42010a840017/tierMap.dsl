
tierMap '77cacdcb-6f02-11ec-a8e3-42010a840017', {
  applicationName = 'Petclinic on k8s'
  environmentName = 'PreProduction'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  microserviceMapping '71866a58-790e-11ec-a543-42010a840017', {
    clusterName = 'petclinic-preprod'
    clusterProjectName = 'Petclinic'
    microserviceName = 'spring-petclinic'
    tierMapName = '77cacdcb-6f02-11ec-a8e3-42010a840017'
  }
}
