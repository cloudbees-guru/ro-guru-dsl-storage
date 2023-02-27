release 'Petclinic - $[petclinicVersion]', {
  projectName = '$[releaseProjName]'

  deployerApplication 'Petclinic via Ansible Tower', {
    enforceDependencies = '0'
    orderIndex = '3'
    processName = 'Deploy via Ansible Tower'
    smartDeploy = '0'
    stageArtifacts = '0'
    
    deployerConfiguration 'Petclinic via Ansible Tower Integration', {
      deployerTaskName = 'Deploy'
      environmentName = 'Integration'
      skipDeploy = '0'
      stageName = 'Integration'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

   deployerConfiguration 'Petclinic via Ansible Tower UAT', {
      deployerTaskName = 'Deploy'
      environmentName = 'UAT'
      skipDeploy = '0'
      stageName = 'UAT'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

   deployerConfiguration 'Petclinic via Ansible Tower PreProduction', {
      deployerTaskName = 'Deploy'
      environmentName = 'PreProduction'
      skipDeploy = '0'
      stageName = 'PreProduction'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
   }

   deployerConfiguration 'Petclinic via Ansible Tower Production', {
      deployerTaskName = 'Deploy'
      environmentName = 'Production'
      skipDeploy = '0'
      stageName = 'Production'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }
  }
}