
tierMap '76c8e3bd-59a7-11ec-ae5c-42010a840017', {
  applicationName = 'Petclinic via Ansible Tower'
  environmentName = 'UAT'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'

  tierMapping '76ee9419-59a7-11ec-a4bb-42010a840017', {
    applicationTierName = 'Frontend'
    environmentTierName = 'Local'
    tierMapName = '76c8e3bd-59a7-11ec-ae5c-42010a840017'
  }

  tierMapping 'dbcd7ba6-59a7-11ec-bc4d-42010a840017', {
    applicationTierName = 'Database'
    environmentTierName = 'Local'
    tierMapName = '76c8e3bd-59a7-11ec-ae5c-42010a840017'
  }
}
