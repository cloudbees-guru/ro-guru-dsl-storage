
task 'SonarQube Gate', {
  actualParameter = [
    'projectKey': 'org.springframework.samples:spring-petclinic',
    'projectName': 'petclinic',
    'projectVersion': '3.0.0-SNAPSHOT',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  gateType = 'POST'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  resourceName = 'local'
  skippable = '0'
  subprocedure = 'Check SonarQube quality gate'
  subproject = 'Petclinic'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
