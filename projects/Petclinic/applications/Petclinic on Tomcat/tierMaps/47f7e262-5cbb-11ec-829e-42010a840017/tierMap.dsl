
tierMap '47f7e262-5cbb-11ec-829e-42010a840017', {
  applicationName = 'Petclinic on Tomcat'
  environmentName = 'PreProduction'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '0cc95c0e-9c9b-11ed-b1a9-169d6631aa63', {
    applicationTierName = 'Database'
    environmentTierName = 'MySQL'
    tierMapName = '47f7e262-5cbb-11ec-829e-42010a840017'
  }

  tierMapping '481359dc-5cbb-11ec-950d-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Tomcat'
    tierMapName = '47f7e262-5cbb-11ec-829e-42010a840017'
  }
}
