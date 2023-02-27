
tierMap '280d4589-56f4-11ec-a687-42010a840017', {
  applicationName = 'Petclinic via Ansible Tower'
  environmentName = 'Integration'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '28351928-56f4-11ec-91a4-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Local'
    tierMapName = '280d4589-56f4-11ec-a687-42010a840017'
  }

  tierMapping '293e72ff-56f4-11ec-8a5c-42010a840017', {
    applicationTierName = 'Database'
    environmentTierName = 'Local'
    tierMapName = '280d4589-56f4-11ec-a687-42010a840017'
  }
}
