
tierMap '0d0bd6ea-6f02-11ec-ae03-42010a840017', {
  applicationName = 'Petclinic on JBoss Fail'
  environmentName = 'UAT'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '0d21335d-6f02-11ec-8e2a-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'JBoss'
    tierMapName = '0d0bd6ea-6f02-11ec-ae03-42010a840017'
  }

  tierMapping '0f4e73e6-6f02-11ec-a9e7-42010a840017', {
    applicationTierName = 'Database'
    environmentTierName = 'MySQL'
    tierMapName = '0d0bd6ea-6f02-11ec-ae03-42010a840017'
  }
}
