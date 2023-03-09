
tierMap 'ecc5e117-9005-11ec-87fd-42010a840017', {
  applicationName = 'Petclinic on Tomcat'
  environmentName = 'Production'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '054debe0-9c9b-11ed-a3a5-169d6631aa63', {
    applicationTierName = 'Database'
    environmentTierName = 'MySQL'
    tierMapName = 'ecc5e117-9005-11ec-87fd-42010a840017'
  }

  tierMapping 'ecff402d-9005-11ec-ba11-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Tomcat'
    tierMapName = 'ecc5e117-9005-11ec-87fd-42010a840017'
  }
}
