import java.io.File


step 'trace', {
  command = new File(projectDir, "./procedures/pipelineTrace/steps/trace.groovy").text
  projectName = 'Guru'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
