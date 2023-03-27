import java.io.File


task 'wait', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/Service1 - rics/stages/Stage 1/tasks/wait.cmd").text,
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
