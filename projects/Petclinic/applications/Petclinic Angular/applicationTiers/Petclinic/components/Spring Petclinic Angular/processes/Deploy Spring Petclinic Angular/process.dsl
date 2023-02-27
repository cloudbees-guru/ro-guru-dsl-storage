import java.io.File


process 'Deploy Spring Petclinic Angular', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimitUnits = 'minutes'

  processStep 'Kill existing npm process', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/Kill existing npm process.cmd").text,
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }

  processStep 'Git clone', {
    actualParameter = [
      'branch': 'master',
      'commit': '',
      'config': '/projects/Petclinic/pluginConfigurations/Git',
      'depth': '',
      'gitRepoFolder': '/opt/petclinic/spring-petclinic-angular',
      'mirror': 'false',
      'overwrite': 'true',
      'pathspecs': '',
      'referenceFolder': '',
      'repoUrl': 'https://github.com/cloudbees-guru/spring-petclinic-angular',
      'resultPropertySheet': '/myJob/clone',
      'shallowSubmodules': 'false',
      'submodules': 'false',
      'tag': '',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Clone'
    subproject = '/plugins/EC-Git/project'
    useUtilityResource = '0'
  }

  processStep 'Replace FM key', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/Replace FM key.cmd").text,
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

  processStep 'Replace REST_API_URL', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/Replace REST_API_URL.cmd").text,
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

  processStep 'npm install', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/npm install.cmd").text,
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

  processStep 'npm start', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/npm start.cmd").text,
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

  processDependency 'Replace REST_API_URL', targetProcessStepName: 'npm install', {
    branchType = 'ALWAYS'
  }

  processDependency 'Git clone', targetProcessStepName: 'Replace FM key', {
    branchType = 'ALWAYS'
  }

  processDependency 'Replace FM key', targetProcessStepName: 'npm install', {
    branchType = 'ALWAYS'
  }

  processDependency 'Kill existing npm process', targetProcessStepName: 'Git clone', {
    branchType = 'ALWAYS'
  }

  processDependency 'npm install', targetProcessStepName: 'npm start', {
    branchType = 'ALWAYS'
  }

  processDependency 'Git clone', targetProcessStepName: 'Replace REST_API_URL', {
    branchType = 'ALWAYS'
  }
}
