import java.io.File


process 'Deploy on MySQL', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'

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
    dependencyJoinType = 'and'
    processStepType = 'component'
    projectName = 'Petclinic'
    subprocedure = 'Retrieve Artifact from Nexus'
    subproject = '/plugins/EC-Nexus/project'
  }

  processStep 'Unzip archive', {
    description = 'Unzip JAR file to collect the sql scripts'
    actualParameter = [
      'destinationDir': '.',
      'zipFile': '$[/myComponent/artifactData/artifactFileName]',
    ]
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Unzip File'
    subproject = '/plugins/EC-FileOps/project'
  }

  processStep 'Update database name', {
    description = 'Default database name is petclinic and needs to be updated to match petclinic_user_environment'
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic on Tomcat/applicationTiers/Database/components/Database/processes/Deploy on MySQL/processSteps/Update database name.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }

  processStep 'Clean-up', {
    description = 'Drop current database'
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
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
  }

  processStep 'Execute user.sql', {
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
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
  }

  processStep 'Exectute schema.sql', {
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
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
  }

  processStep 'Execute data.sql', {
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
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'ExecuteSQL'
    subproject = '/plugins/EC-MYSQL/project'
  }

  processDependency 'Exectute schema.sql', targetProcessStepName: 'Execute data.sql'

  processDependency 'Update database name', targetProcessStepName: 'Clean-up'

  processDependency 'Clean-up', targetProcessStepName: 'Execute user.sql'

  processDependency 'Retrieve spring-petclinic artifact', targetProcessStepName: 'Unzip archive'

  processDependency 'Unzip archive', targetProcessStepName: 'Update database name'

  processDependency 'Execute user.sql', targetProcessStepName: 'Exectute schema.sql'
}
