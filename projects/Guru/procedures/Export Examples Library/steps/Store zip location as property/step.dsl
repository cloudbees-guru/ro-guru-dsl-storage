import java.io.File


step 'Store zip location as property', {
  command = new File(projectDir, "./procedures/Export Examples Library/steps/Store zip location as property.groovy").text
  errorHandling = 'abortProcedure'
  projectName = 'Guru'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
