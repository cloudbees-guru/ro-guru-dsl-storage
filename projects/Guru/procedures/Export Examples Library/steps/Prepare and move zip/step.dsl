import java.io.File


step 'Prepare and move zip', {
  command = new File(projectDir, "./procedures/Export Examples Library/steps/Prepare and move zip.cmd").text
  errorHandling = 'abortProcedure'
  projectName = 'Guru'
  shell = 'bash'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
