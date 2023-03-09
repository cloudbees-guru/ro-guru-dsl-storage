import java.io.File


process 'Deploy REST backend', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'

  processStep 'Docker pull', {
    actualParameter = [
      'credentials': '',
      'dockerImage': 'springcommunity/spring-petclinic-rest',
      'dockerImageVersion': 'latest',
      'privateRegistry': 'false',
      'registry': 'registry.docker.com',
    ]
    dependencyJoinType = 'and'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Pull Docker image'
    subproject = 'Petclinic'
  }

  processStep 'Restart spring-petclinic-rest', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/REST backend/processes/Deploy REST backend/processSteps/Restart spring-petclinic-rest.cmd").text,
    ]
    dependencyJoinType = 'and'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
  }

  processDependency 'Docker pull', targetProcessStepName: 'Restart spring-petclinic-rest'
}
