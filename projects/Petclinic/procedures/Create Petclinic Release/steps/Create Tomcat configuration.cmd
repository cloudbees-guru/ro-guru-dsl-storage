release 'Petclinic - $[petclinicVersion]', {
  projectName = '$[releaseProjName]'

  deployerApplication 'Petclinic on Tomcat', {
    enforceDependencies = '0'
    orderIndex = '3'
    processName = 'Deploy on Tomcat'
    smartDeploy = '0'
    stageArtifacts = '1'
    
    deployerConfiguration 'Petclinic on Tomcat Integration', {
      deployerTaskName = 'Deploy'
      environmentName = 'Integration'
      skipDeploy = '0'
      stageName = 'Integration'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

   deployerConfiguration 'Petclinic on Tomcat UAT', {
      deployerTaskName = 'Deploy'
      environmentName = 'UAT'
      skipDeploy = '0'
      stageName = 'UAT'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

   deployerConfiguration 'Petclinic on Tomcat PreProduction', {
      deployerTaskName = 'Deploy'
      environmentName = 'PreProduction'
      skipDeploy = '0'
      stageName = 'PreProduction'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
   }

   deployerConfiguration 'Petclinic on Tomcat Production', {
      deployerTaskName = 'Deploy'
      environmentName = 'Production'
      skipDeploy = '0'
      stageName = 'Production'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }
  }
}