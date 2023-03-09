
tierMap '47f7e262-5cbb-11ec-829e-42010a840017', {
  applicationName = 'Petclinic via Ansible Tower'
  environmentName = 'PreProduction'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '481359dc-5cbb-11ec-950d-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Local'
    tierMapName = '47f7e262-5cbb-11ec-829e-42010a840017'
  }

  tierMapping '49a0da35-0da0-11ed-b312-42010a840017', {
    applicationTierName = 'Database'
    environmentTierName = 'Local'
    tierMapName = '47f7e262-5cbb-11ec-829e-42010a840017'
  }
}
