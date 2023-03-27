import java.io.File


task 'deploy', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/jazsd_123/pipelines/Service1 - grz/stages/Stage 1/tasks/deploy.cmd").text,
  ]
  applicationName = 'ELBA'
  applicationProjectName = 'jzarzycki'
  applicationVersion = '1'
  artifacts = 'art1:10.1'
  environmentName = 'grz'
  environmentProjectName = 'jzarzycki'
  projectName = 'jzarzycki'
  subTaskType = 'DEPLOY'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
