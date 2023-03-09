release 'Petclinic - $[petclinicVersion]', {
  projectName = '$[releaseProjName]'

  deployerApplication 'Petclinic on k8s', {
    enforceDependencies = '0'
    orderIndex = '1'
    processName = 'Deploy Application'
    smartDeploy = '0'
    stageArtifacts = '1'

    deployerConfiguration 'Petclinic on k8s - Integration', {
      deployerTaskName = 'Deploy'
      environmentName = 'Integration'
      skipDeploy = '0'
      stageName = 'Integration'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

    deployerConfiguration 'Petclinic on k8s - UAT', {
      deployerTaskName = 'Deploy'
      environmentName = 'UAT'
      skipDeploy = '0'
      stageName = 'UAT'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

    deployerConfiguration 'Petclinic on k8s - PreProduction', {
      deployerTaskName = 'Deploy'
      environmentName = 'PreProduction'
      skipDeploy = '0'
      stageName = 'PreProduction'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }

    deployerConfiguration 'Petclinic on k8s - Production', {
      deployerTaskName = 'Deploy'
      environmentName = 'Production'
      skipDeploy = '0'
      stageName = 'Production'
      actualParameter 'petclinicVersion', '$[petclinicVersion]'
    }
  }
}