import java.io.File


task 'Command', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/Fake DORA/stages/Stage 1/tasks/Command.cmd").text,
  ]
  projectName = 'mpolak'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
