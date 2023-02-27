import java.io.File


process 'Deploy on MySQL', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'Retrieve spring-petclinic artifact', {
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
      'version': '$[/myJob/ec_Database-version]',
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

  processStep 'Unzip archive', {
    description = 'Unzip JAR file to collect the sql scripts'
    actualParameter = [
      'destinationDir': '.',
      'zipFile': '$[/myComponent/artifactData/artifactFileName]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Unzip File'
    subproject = '/plugins/EC-FileOps/project'
    useUtilityResource = '0'
  }

  processStep 'Update database name', {
    description = 'Default database name is petclinic and needs to be updated to match petclinic_user_environment'
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic on JBoss Fail/applicationTiers/Database/components/Database/processes/Deploy on MySQL/processSteps/Update database name.cmd").text,
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

  processStep 'execute user sql', {
    actualParameter = [
      'AdditionalCommands': '',
      'CommandLineUtility': 'mysql',
      'ConfigName': '$[/myResource/mysql]',
      'ConnectionEncoding': 'utf8',
      'DBName': 'petclinic',
      'OutputFormat': 'text',
      'Port': '3306',
      'Query': '',
      'ReportName': '',
      'Result_outpp': '',
      'Server': 'localhost',
      'SQLFilePath': 'BOOT-INF/classes/db/mysql/user.sql',
      'WorkingDir': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
    useUtilityResource = '0'
  }

  processStep 'execute schema sql', {
    actualParameter = [
      'AdditionalCommands': '',
      'CommandLineUtility': 'mysql',
      'ConfigName': '$[/myResource/mysql]',
      'ConnectionEncoding': 'utf8',
      'DBName': 'petclinic_$[/myJob/launchedByUser]_$[/myEnvironment/shortcut]',
      'OutputFormat': 'text',
      'Port': '3306',
      'Query': '',
      'ReportName': '',
      'Result_outpp': '',
      'Server': 'localhost',
      'SQLFilePath': 'BOOT-INF/classes/db/mysql/schema.sql',
      'WorkingDir': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
    useUtilityResource = '0'
  }

  processStep 'execute data sql', {
    actualParameter = [
      'AdditionalCommands': '',
      'CommandLineUtility': 'mysql',
      'ConfigName': '$[/myResource/mysql]',
      'ConnectionEncoding': 'utf8',
      'DBName': 'petclinic_$[/myJob/launchedByUser]_$[/myEnvironment/shortcut]',
      'OutputFormat': 'text',
      'Port': '3306',
      'Query': '',
      'ReportName': '',
      'Result_outpp': '',
      'Server': 'localhost',
      'SQLFilePath': 'BOOT-INF/classes/db/mysql/data.sql',
      'WorkingDir': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
    useUtilityResource = '0'
  }

  processStep 'Fail', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic on JBoss Fail/applicationTiers/Database/components/Database/processes/Deploy on MySQL/processSteps/Fail.cmd").text,
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

  processDependency 'execute data sql', targetProcessStepName: 'Fail', {
    branchType = 'ALWAYS'
  }

  processDependency 'Update database name', targetProcessStepName: 'clean up', {
    branchType = 'SUCCESS'
  }

  processDependency 'Retrieve spring-petclinic artifact', targetProcessStepName: 'Unzip archive', {
    branchType = 'ALWAYS'
  }

  processDependency 'clean up', targetProcessStepName: 'execute user sql', {
    branchType = 'ALWAYS'
  }

  processDependency 'execute user sql', targetProcessStepName: 'execute schema sql', {
    branchType = 'ALWAYS'
  }

  processDependency 'execute schema sql', targetProcessStepName: 'execute data sql', {
    branchType = 'ALWAYS'
  }

  processDependency 'Unzip archive', targetProcessStepName: 'Update database name', {
    branchType = 'ALWAYS'
  }
}
