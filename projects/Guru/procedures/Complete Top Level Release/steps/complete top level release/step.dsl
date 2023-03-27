import java.io.File


step 'complete top level release', {
  command = new File(projectDir, "./procedures/Complete Top Level Release/steps/complete top level release.cmd").text
  projectName = 'Guru'
  shell = 'bash'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
