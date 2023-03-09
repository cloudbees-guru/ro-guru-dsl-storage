import java.io.File


process 'Deploy Spring Petclinic Angular', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'

  processStep 'Kill existing npm process', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/Kill existing npm process.cmd").text,
    ]
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
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
    dependencyJoinType = 'and'
    processStepType = 'plugin'
    projectName = 'Petclinic'
    subprocedure = 'Clone'
    subproject = '/plugins/EC-Git/project'
  }

  processStep 'Replace FM key', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/Replace FM key.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }

  processStep 'Replace REST_API_URL', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/Replace REST_API_URL.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }

  processStep 'npm install', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/npm install.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }

  processStep 'npm start', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/Spring Petclinic Angular/processes/Deploy Spring Petclinic Angular/processSteps/npm start.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }

  processDependency 'Replace REST_API_URL', targetProcessStepName: 'npm install'

  processDependency 'Git clone', targetProcessStepName: 'Replace FM key'

  processDependency 'Replace FM key', targetProcessStepName: 'npm install'

  processDependency 'Kill existing npm process', targetProcessStepName: 'Git clone'

  processDependency 'npm install', targetProcessStepName: 'npm start'

  processDependency 'Git clone', targetProcessStepName: 'Replace REST_API_URL'
}
