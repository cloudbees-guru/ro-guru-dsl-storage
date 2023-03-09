
tierMap '18e3dd06-cc57-11ec-875d-42010a840017', {
  applicationName = 'Petclinic via Ansible Tower'
  environmentName = 'Production'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '18f456f5-cc57-11ec-98b4-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Local'
    tierMapName = '18e3dd06-cc57-11ec-875d-42010a840017'
  }

  tierMapping '1af75360-cc57-11ec-80ca-42010a840017', {
    applicationTierName = 'Database'
    environmentTierName = 'Local'
    tierMapName = '18e3dd06-cc57-11ec-875d-42010a840017'
  }
}
