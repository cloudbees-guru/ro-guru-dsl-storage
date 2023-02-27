import java.io.File


process 'Deploy REST backend', {
  processType = 'DEPLOY'
  projectName = 'Petclinic'
  timeLimitUnits = 'minutes'

  processStep 'Docker pull', {
    actualParameter = [
      'credentials': '',
      'dockerImage': 'springcommunity/spring-petclinic-rest',
      'dockerImageVersion': 'latest',
      'privateRegistry': 'false',
      'registry': 'registry.docker.com',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'procedure'
    projectName = 'Petclinic'
    subprocedure = 'Pull Docker image'
    subproject = 'Petclinic'
    useUtilityResource = '0'
  }

  processStep 'Restart spring-petclinic-rest', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic Angular/applicationTiers/Petclinic/components/REST backend/processes/Deploy REST backend/processSteps/Restart spring-petclinic-rest.cmd").text,
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

  processDependency 'Docker pull', targetProcessStepName: 'Restart spring-petclinic-rest', {
    branchType = 'ALWAYS'
  }
}
