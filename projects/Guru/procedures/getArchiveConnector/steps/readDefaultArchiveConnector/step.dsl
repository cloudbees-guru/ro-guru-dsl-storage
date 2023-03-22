import java.io.File


step 'readDefaultArchiveConnector', {
  command = new File(projectDir, "./procedures/getArchiveConnector/steps/readDefaultArchiveConnector.cmd").text
  projectName = 'Guru'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
