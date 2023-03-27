import java.io.File


task 'wait', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Service1 - grz/pipelines/pipeline_Service1 - grz/stages/Stage 1/tasks/wait.cmd").text,
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
