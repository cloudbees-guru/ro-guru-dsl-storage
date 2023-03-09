import java.io.File


step 'CIPluginTierReport', {
  command = new File(projectDir, "./procedures/CIPluginTierReport/steps/CIPluginTierReport.groovy").text
  projectName = 'Guru'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
