import java.io.File


step 'Create Release', {
  description = 'Create the main release configuration with stages and tasks'
  command = new File(projectDir, "./procedures/Create Petclinic Release/steps/Create Release.cmd").text
  errorHandling = 'abortProcedureNow'
  projectName = 'Petclinic'
  shell = 'ectool evalDsl --dslFile'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
