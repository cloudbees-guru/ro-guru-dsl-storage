
deployerApplication 'Petclinic via Ansible Tower', {
  enforceDependencies = '0'
  errorHandling = 'stopOnError'
  orderIndex = '1'
  processName = 'Deploy via Ansible Tower'
  smartDeploy = '0'
  stageArtifacts = '0'

  deployerConfiguration 'Petclinic via Ansible Tower Integration', {
    deployerTaskName = 'Deploy'
    environmentName = 'Integration'
    insertRollingDeployManualStep = '0'
    processName = 'Deploy via Ansible Tower'
    skipDeploy = '0'
    stageName = 'Integration'
    actualParameter 'petclinicVersion', '3.0.0-SNAPSHOT'
  }

  deployerConfiguration 'Petclinic via Ansible Tower PreProduction', {
    deployerTaskName = 'Deploy'
    environmentName = 'PreProduction'
    insertRollingDeployManualStep = '0'
    processName = 'Deploy via Ansible Tower'
    skipDeploy = '0'
    stageName = 'PreProduction'
    actualParameter 'petclinicVersion', '3.0.0-SNAPSHOT'
  }

  deployerConfiguration 'Petclinic via Ansible Tower Production', {
    deployerTaskName = 'Deploy'
    environmentName = 'Production'
    insertRollingDeployManualStep = '0'
    processName = 'Deploy via Ansible Tower'
    skipDeploy = '0'
    stageName = 'Production'
    actualParameter 'petclinicVersion', '3.0.0-SNAPSHOT'
  }

  deployerConfiguration 'Petclinic via Ansible Tower UAT', {
    deployerTaskName = 'Deploy'
    environmentName = 'UAT'
    insertRollingDeployManualStep = '0'
    processName = 'Deploy via Ansible Tower'
    skipDeploy = '0'
    stageName = 'UAT'
    actualParameter 'petclinicVersion', '3.0.0-SNAPSHOT'
  }
}
