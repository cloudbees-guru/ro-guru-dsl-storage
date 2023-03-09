
process 'Deploy webapp on JBoss', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'

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
    dependencyJoinType = 'and'
    processStepType = 'component'
    projectName = 'Petclinic'
    subprocedure = 'Retrieve Artifact from Nexus'
    subproject = '/plugins/EC-Nexus/project'
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
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'DeployApplication'
    subproject = '/plugins/EC-JBoss/project'
  }

  processDependency 'Retrieve Artifact', targetProcessStepName: 'Deploy application'
}
