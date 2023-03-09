import java.io.File


step 'Store timestamp', {
  command = new File(projectDir, "./procedures/Export and push RO DSL Storage/steps/Store timestamp.groovy").text
  errorHandling = 'abortProcedure'
  projectName = 'Guru'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
