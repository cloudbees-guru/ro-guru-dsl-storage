
tierMap '1e09a948-6f02-11ec-a8e3-42010a840017', {
  applicationName = 'Petclinic on k8s'
  environmentName = 'Integration'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  microserviceMapping '62fe78fc-790e-11ec-9ed3-42010a840017', {
    clusterName = 'petclinic-integration'
    clusterProjectName = 'Petclinic'
    microserviceName = 'spring-petclinic'
    tierMapName = '1e09a948-6f02-11ec-a8e3-42010a840017'
  }
}
