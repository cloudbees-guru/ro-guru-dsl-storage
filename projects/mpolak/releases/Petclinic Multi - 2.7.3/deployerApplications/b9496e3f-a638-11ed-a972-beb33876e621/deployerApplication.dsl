
deployerApplication 'Petclinic on k8s', {
  applicationProjectName = 'Petclinic'
  orderIndex = '2'
  processName = 'Deploy Application'

  deployerConfiguration '014ea309-a63d-11ed-bcfa-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'PreProduction'
    environmentProjectName = 'Petclinic'
    processName = 'Deploy Application'
    stageName = 'PreProduction'
    actualParameter 'petclinicVersion', '2.7.3'
  }

  deployerConfiguration '01647548-a63d-11ed-bf74-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'Production'
    environmentProjectName = 'Petclinic'
    processName = 'Deploy Application'
    stageName = 'Production'
    actualParameter 'petclinicVersion', '2.7.3'
  }

  deployerConfiguration 'd6f938f8-a638-11ed-bf74-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'Integration'
    environmentProjectName = 'Petclinic'
    processName = 'Deploy Application'
    stageName = 'Integration'
    actualParameter 'petclinicVersion', '2.7.3'
  }

  deployerConfiguration 'd70df963-a638-11ed-b4b3-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'UAT'
    environmentProjectName = 'Petclinic'
    environmentTemplateProjectName = 'null'
    processName = 'Deploy Application'
    stageName = 'UAT'
    actualParameter 'petclinicVersion', '2.7.3'
  }
}
