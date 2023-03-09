
task 'Deploy Petclinic', {
  actualParameter = [
    'ec_enforceDependencies': '1',
    'ec_smartDeployOption': '0',
    'ec_stageArtifacts': '0',
    'FMenvironmentKey': '$[FMenvironment]',
  ]
  environmentName = 'Feature Management'
  environmentProjectName = 'Petclinic'
  projectName = 'Petclinic'
  rollingDeployEnabled = '0'
  subapplication = 'Petclinic Angular'
  subprocess = 'Deploy spring-petclinic-angular'
  subproject = 'Petclinic'
  taskProcessType = 'APPLICATION'
  taskType = 'PROCESS'
}
