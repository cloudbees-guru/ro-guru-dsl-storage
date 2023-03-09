
deployerApplication 'Petclinic on JBoss', {
  applicationProjectName = 'Petclinic'
  enforceDependencies = '1'
  orderIndex = '1'
  processName = 'Deploy on JBoss'
  stageArtifacts = '1'

  deployerConfiguration 'cc5c572c-a633-11ed-a240-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'Integration'
    environmentProjectName = 'Petclinic'
    environmentTemplateProjectName = 'null'
    processName = 'Deploy on JBoss'
    stageName = 'Integration'
    actualParameter 'petclinicVersion', '2.7.3'
  }

  deployerConfiguration 'cc6e8069-a633-11ed-bcfa-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'UAT'
    environmentProjectName = 'Petclinic'
    environmentTemplateProjectName = 'null'
    processName = 'Deploy on JBoss'
    stageName = 'UAT'
    actualParameter 'petclinicVersion', '2.7.3'
  }

  deployerConfiguration 'cc805ac9-a633-11ed-b4b3-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'PreProduction'
    environmentProjectName = 'Petclinic'
    environmentTemplateProjectName = 'null'
    processName = 'Deploy on JBoss'
    stageName = 'PreProduction'
    actualParameter 'petclinicVersion', '2.7.3'
  }

  deployerConfiguration 'cc8f008c-a633-11ed-a68b-beb33876e621', {
    deployerTaskName = 'Deploy'
    environmentName = 'Production'
    environmentProjectName = 'Petclinic'
    environmentTemplateProjectName = 'null'
    processName = 'Deploy on JBoss'
    stageName = 'Production'
    actualParameter 'petclinicVersion', '2.7.3'
  }
}
