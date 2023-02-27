
tierMap '76c8e3bd-59a7-11ec-ae5c-42010a840017', {
  applicationName = 'Petclinic on Tomcat'
  environmentName = 'UAT'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '094899b3-9c9b-11ed-b1a9-169d6631aa63', {
    applicationTierName = 'Database'
    environmentTierName = 'MySQL'
    tierMapName = '76c8e3bd-59a7-11ec-ae5c-42010a840017'
  }

  tierMapping '76ee9419-59a7-11ec-a4bb-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Tomcat'
    tierMapName = '76c8e3bd-59a7-11ec-ae5c-42010a840017'
  }
}
