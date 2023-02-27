
tierMap '6eb0f072-6f02-11ec-a8e3-42010a840017', {
  applicationName = 'Petclinic on k8s'
  environmentName = 'UAT'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  microserviceMapping '4070097f-790e-11ec-87fd-42010a840017', {
    clusterName = 'petclinic-uat'
    clusterProjectName = 'Petclinic'
    microserviceName = 'spring-petclinic'
    tierMapName = '6eb0f072-6f02-11ec-a8e3-42010a840017'
  }
}
