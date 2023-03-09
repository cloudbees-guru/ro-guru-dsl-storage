
schedule 'Daily', {
  beginDate = '2022-04-19'
  endDate = ''
  interval = '0'
  intervalUnits = 'seconds'
  monthDays = ''
  pipelineName = 'Guru System Status'
  projectName = 'Guru'
  startTime = '08:00'
  stopTime = ''
  timeZone = 'Europe/London'
  weekDays = ''
  actualParameter 'ec_stagesToRun', '["CBCI","CBCD","Notify"]'
}
