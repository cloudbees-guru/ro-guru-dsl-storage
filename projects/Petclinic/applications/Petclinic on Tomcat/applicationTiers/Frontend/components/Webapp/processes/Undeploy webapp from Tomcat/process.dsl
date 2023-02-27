
process 'Undeploy webapp from Tomcat', {
  description = 'Undeploys current application from Tomcat'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'Tomcat stop application', {
    actualParameter = [
      'apppath': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'config': '/projects/Petclinic/pluginConfigurations/Tomcat',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'StopApp'
    subproject = '/plugins/EC-Tomcat/project'
    useUtilityResource = '0'
  }

  processStep 'Tomcat undeploy application', {
    actualParameter = [
      'apppath': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'config': '/projects/Petclinic/pluginConfigurations/Tomcat',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'UndeployApp'
    subproject = '/plugins/EC-Tomcat/project'
    useUtilityResource = '0'
  }

  processDependency 'Tomcat stop application', targetProcessStepName: 'Tomcat undeploy application', {
    branchType = 'ALWAYS'
  }
}
