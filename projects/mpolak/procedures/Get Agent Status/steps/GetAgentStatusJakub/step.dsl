import java.io.File


step 'GetAgentStatusJakub', {
  command = new File(projectDir, "./procedures/Get Agent Status/steps/GetAgentStatusJakub.groovy").text
  parallel = '1'
  projectName = 'mpolak'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
