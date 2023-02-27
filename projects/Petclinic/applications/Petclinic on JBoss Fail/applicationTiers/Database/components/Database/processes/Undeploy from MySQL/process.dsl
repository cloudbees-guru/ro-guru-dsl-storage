
process 'Undeploy from MySQL', {
  description = 'Drops table, and undeploys the component'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'clean up', {
    actualParameter = [
      'AdditionalCommands': '',
      'CommandLineUtility': 'mysql',
      'ConfigName': '$[/myResource/mysql]',
      'ConnectionEncoding': 'utf8',
      'DBName': 'petclinic',
      'OutputFormat': 'text',
      'Port': '3306',
      'Query': 'DROP DATABASE IF EXISTS petclinic_$[/myJob/launchedByUser]_$[/myEnvironment/shortcut];',
      'ReportName': '',
      'Result_outpp': '',
      'Server': 'localhost',
      'SQLFilePath': '',
      'WorkingDir': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
    useUtilityResource = '0'
  }
}
