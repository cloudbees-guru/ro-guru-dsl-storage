
tierMap '280d4589-56f4-11ec-a687-42010a840017', {
  applicationName = 'Petclinic on Tomcat'
  environmentName = 'Integration'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '28351928-56f4-11ec-91a4-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Tomcat'
    tierMapName = '280d4589-56f4-11ec-a687-42010a840017'
  }

  tierMapping 'a36ce68e-5e9e-11ed-8384-863e9e280319', {
    applicationTierName = 'Database'
    environmentTierName = 'MySQL'
    tierMapName = '280d4589-56f4-11ec-a687-42010a840017'
  }
}
