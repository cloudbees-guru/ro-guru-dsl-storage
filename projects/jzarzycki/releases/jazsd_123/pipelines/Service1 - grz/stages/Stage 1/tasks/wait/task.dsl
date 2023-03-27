import java.io.File


task 'wait', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/jazsd_123/pipelines/Service1 - grz/stages/Stage 1/tasks/wait.cmd").text,
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
