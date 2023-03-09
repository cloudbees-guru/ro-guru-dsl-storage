import java.io.File


task 'Step 1', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/Speed Test/stages/Stage 1/tasks/Step 1.cmd").text,
    'shellToUse': 'bash',
  ]
  projectName = 'Guru'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
