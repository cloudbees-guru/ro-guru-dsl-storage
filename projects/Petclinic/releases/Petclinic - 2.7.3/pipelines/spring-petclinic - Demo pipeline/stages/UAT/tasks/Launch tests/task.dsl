import java.io.File


task 'Launch tests', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Petclinic - 2.7.3/pipelines/spring-petclinic - Demo pipeline/stages/UAT/tasks/Launch tests.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Petclinic'
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
