import java.io.File


task 'deploy', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Service1 - rics/pipelines/pipeline_Service1 - grz/stages/Stage 1/tasks/deploy.cmd").text,
  ]
  applicationName = 'ELBA'
  applicationProjectName = 'jzarzycki'
  applicationVersion = '1'
  artifacts = 'art1:10.1'
  environmentName = 'rics'
  environmentProjectName = 'jzarzycki'
  projectName = 'jzarzycki'
  subTaskType = 'DEPLOY'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
