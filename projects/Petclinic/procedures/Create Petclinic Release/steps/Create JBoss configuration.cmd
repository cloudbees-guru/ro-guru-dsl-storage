release 'Petclinic - $[petclinicVersion]', {
  projectName = '$[releaseProjName]'

  deployerApplication 'Petclinic on JBoss', {
    enforceDependencies = '0'
    orderIndex = '3'
    processName = 'Deploy on JBoss'
    smartDeploy = '0'
    stageArtifacts = '1'
    
    deployerConfiguration 'Petclinic on JBoss Integration', {
      deployerTaskName = 'Deploy'
      environmentName = 'Integration'
      skipDeploy = '0'
      stageName = 'Integration'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

   deployerConfiguration 'Petclinic on JBoss UAT', {
      deployerTaskName = 'Deploy'
      environmentName = 'UAT'
      skipDeploy = '0'
      stageName = 'UAT'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

   deployerConfiguration 'Petclinic on JBoss PreProduction', {
      deployerTaskName = 'Deploy'
      environmentName = 'PreProduction'
      skipDeploy = '0'
      stageName = 'PreProduction'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
   }

   deployerConfiguration 'Petclinic on JBoss Production', {
      deployerTaskName = 'Deploy'
      environmentName = 'Production'
      skipDeploy = '0'
      stageName = 'Production'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }
  }
}