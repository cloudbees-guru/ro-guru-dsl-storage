import java.io.File


step 'GetAgentStatus', {
  command = new File(projectDir, "./procedures/Get Agent Status/steps/GetAgentStatus.groovy").text
  parallel = '1'
  projectName = 'mpolak'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
