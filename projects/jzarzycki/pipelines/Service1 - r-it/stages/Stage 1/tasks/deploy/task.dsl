import java.io.File


task 'deploy', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/Service1 - r-it/stages/Stage 1/tasks/deploy.cmd").text,
  ]
  applicationName = 'ELBA'
  applicationProjectName = 'jzarzycki'
  applicationVersion = '1'
  artifacts = 'art1:10.1'
  environmentName = 'r-it'
  environmentProjectName = 'jzarzycki'
  projectName = 'jzarzycki'
  subTaskType = 'DEPLOY'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
