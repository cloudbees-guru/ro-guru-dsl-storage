
step 'List applications', {
  alwaysRun = '1'
  errorHandling = 'ignore'
  projectName = 'Petclinic'
  subprocedure = 'CheckDeployStatus'
  subproject = '/plugins/EC-JBoss/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'appname', '$[jbossDeployment]'
  actualParameter 'config', '$[jbossConfiguration]'
  actualParameter 'criteria', 'OK'
  actualParameter 'wait_time', '5'
}
