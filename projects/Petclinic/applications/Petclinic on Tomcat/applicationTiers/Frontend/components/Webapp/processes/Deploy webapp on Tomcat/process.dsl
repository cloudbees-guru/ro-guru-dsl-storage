import java.io.File


process 'Deploy webapp on Tomcat', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'Retrieve artifact', {
    actualParameter = [
      'artifactId': '$[/myComponent/ec_content_details/artifactId]',
      'classifier': '$[/myComponent/ec_content_details/classifier]',
      'config': '$[/myComponent/ec_content_details/config]',
      'destination': '$[/myComponent/ec_content_details/destination]',
      'extension': '$[/myComponent/ec_content_details/extension]',
      'groupId': '$[/myComponent/ec_content_details/groupId]',
      'latestVersion': '$[/myComponent/ec_content_details/latestVersion]',
      'overwrite': '$[/myComponent/ec_content_details/overwrite]',
      'repository': '$[/myComponent/ec_content_details/repository]',
      'repoType': '$[/myComponent/ec_content_details/repoType]',
      'resultPropertySheet': '$[/myComponent/ec_content_details/resultPropertySheet]',
      'version': '$[/myJob/ec_Webapp-version]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'component'
    projectName = 'Petclinic'
    subprocedure = 'Retrieve Artifact from Nexus'
    subproject = '/plugins/EC-Nexus/project'
    useUtilityResource = '0'
  }

  processStep 'Verify WAR file', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic on Tomcat/applicationTiers/Frontend/components/Webapp/processes/Deploy webapp on Tomcat/processSteps/Verify WAR file.cmd").text,
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }

  processStep 'Tomcat deploy app', {
    actualParameter = [
      'applicationconfigfilepath': '',
      'apppath': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'config': '/projects/Petclinic/pluginConfigurations/Tomcat',
      'updateapp': '1',
      'warfile': 'file:/tmp/spring-petclinic.war',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'DeployApp'
    subproject = '/plugins/EC-Tomcat/project'
    useUtilityResource = '0'
  }

  processStep 'Tomcat start application', {
    actualParameter = [
      'apppath': 'Petclinic-$[/myEnvironment]-$[/myJob/launchedByUser]',
      'config': '/projects/Petclinic/pluginConfigurations/Tomcat',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ReloadApp'
    subproject = '/plugins/EC-Tomcat/project'
    useUtilityResource = '0'
  }

  processDependency 'Retrieve artifact', targetProcessStepName: 'Verify WAR file', {
    branchType = 'ALWAYS'
  }

  processDependency 'Verify WAR file', targetProcessStepName: 'Tomcat deploy app', {
    branchType = 'ALWAYS'
  }

  processDependency 'Tomcat deploy app', targetProcessStepName: 'Tomcat start application', {
    branchType = 'ALWAYS'
  }
}
