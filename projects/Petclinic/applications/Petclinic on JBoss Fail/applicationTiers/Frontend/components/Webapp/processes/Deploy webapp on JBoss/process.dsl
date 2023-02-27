
process 'Deploy webapp on JBoss', {
  description = ''
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'Retrieve Artifact', {
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
    workspaceName = ''
  }

  processStep 'Deploy application', {
    actualParameter = [
      'additionalOptions': '',
      'applicationContentSourcePath': '$[/myJob/artifactData/fullRetrievedLocation]',
      'config': '/projects/Petclinic/pluginConfigurations/Wildfly',
      'deploymentName': 'petclinic-$[petclinicVersion]-$[/myEnvironment]',
      'disabledServerGroups': '',
      'enabledServerGroups': '--all-server-groups',
      'runtimeName': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'DeployApplication'
    subproject = '/plugins/EC-JBoss/project'
    useUtilityResource = '0'
  }

  processDependency 'Retrieve Artifact', targetProcessStepName: 'Deploy application', {
    branchType = 'ALWAYS'
  }
}
