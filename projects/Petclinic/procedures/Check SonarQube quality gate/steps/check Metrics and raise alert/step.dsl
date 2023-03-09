import java.io.File


step 'check Metrics and raise alert', {
  command = new File(projectDir, "./procedures/Check SonarQube quality gate/steps/check Metrics and raise alert.cmd").text
  condition = '$[/javascript (getProperty(\'/myJob/getLastSonarMetrics/alert_status\')!=\'OK\');]'
  projectName = 'Petclinic'
  timeLimit = '0'
}
