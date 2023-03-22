import java.io.File


step 'deleteArchiveConnector', {
  command = new File(projectDir, "./procedures/getArchiveConnector/steps/deleteArchiveConnector.cmd").text
  projectName = 'Guru'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
