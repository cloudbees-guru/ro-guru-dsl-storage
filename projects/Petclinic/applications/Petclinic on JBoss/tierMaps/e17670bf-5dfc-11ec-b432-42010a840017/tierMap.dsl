
tierMap 'e17670bf-5dfc-11ec-b432-42010a840017', {
  applicationName = 'Petclinic on JBoss'
  environmentName = 'Integration'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping 'e188236f-5dfc-11ec-a497-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'JBoss'
    tierMapName = 'e17670bf-5dfc-11ec-b432-42010a840017'
  }

  tierMapping 'e39f6b27-5dfc-11ec-a1f7-42010a840017', {
    applicationTierName = 'Database'
    environmentTierName = 'MySQL'
    tierMapName = 'e17670bf-5dfc-11ec-b432-42010a840017'
  }
}
