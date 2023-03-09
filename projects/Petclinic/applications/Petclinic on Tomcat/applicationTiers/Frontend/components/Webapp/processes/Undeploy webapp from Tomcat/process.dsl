
process 'Undeploy webapp from Tomcat', {
  description = 'Undeploys current application from Tomcat'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'

  processStep 'Tomcat stop application', {
    actualParameter = [
      'apppath': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'config': '/projects/Petclinic/pluginConfigurations/Tomcat',
    ]
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'StopApp'
    subproject = '/plugins/EC-Tomcat/project'
  }

  processStep 'Tomcat undeploy application', {
    actualParameter = [
      'apppath': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'config': '/projects/Petclinic/pluginConfigurations/Tomcat',
    ]
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'UndeployApp'
    subproject = '/plugins/EC-Tomcat/project'
  }

  processDependency 'Tomcat stop application', targetProcessStepName: 'Tomcat undeploy application'
}
