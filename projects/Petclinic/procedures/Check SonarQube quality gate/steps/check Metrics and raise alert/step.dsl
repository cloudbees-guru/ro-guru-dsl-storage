import java.io.File


step 'check Metrics and raise alert', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Check SonarQube quality gate/steps/check Metrics and raise alert.cmd").text
  condition = '$[/javascript (getProperty(\'/myJob/getLastSonarMetrics/alert_status\')!=\'OK\');]'
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'Petclinic'
  releaseMode = 'none'
  resourceName = ''
  shell = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
