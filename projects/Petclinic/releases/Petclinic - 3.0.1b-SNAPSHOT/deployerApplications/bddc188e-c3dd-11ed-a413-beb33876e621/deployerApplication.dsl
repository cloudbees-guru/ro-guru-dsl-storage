
deployerApplication 'Petclinic via Ansible Tower', {
  orderIndex = '1'
  processName = 'Deploy via Ansible Tower'
  smartDeploy = '0'

  deployerConfiguration 'Petclinic via Ansible Tower Integration', {
    deployerTaskName = 'Deploy'
    environmentName = 'Integration'
    processName = 'Deploy via Ansible Tower'
    stageName = 'Integration'
    actualParameter 'petclinicVersion', '3.0.1-SNAPSHOT'
  }

  deployerConfiguration 'Petclinic via Ansible Tower PreProduction', {
    deployerTaskName = 'Deploy'
    environmentName = 'PreProduction'
    processName = 'Deploy via Ansible Tower'
    stageName = 'PreProduction'
    actualParameter 'petclinicVersion', '3.0.1-SNAPSHOT'
  }

  deployerConfiguration 'Petclinic via Ansible Tower Production', {
    deployerTaskName = 'Deploy'
    environmentName = 'Production'
    processName = 'Deploy via Ansible Tower'
    stageName = 'Production'
    actualParameter 'petclinicVersion', '3.0.1-SNAPSHOT'
  }

  deployerConfiguration 'Petclinic via Ansible Tower UAT', {
    deployerTaskName = 'Deploy'
    environmentName = 'UAT'
    processName = 'Deploy via Ansible Tower'
    stageName = 'UAT'
    actualParameter 'petclinicVersion', '3.0.1-SNAPSHOT'
  }
}
