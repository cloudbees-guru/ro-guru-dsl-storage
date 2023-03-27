import java.io.File


task 'Change Release Name', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/jazsd/pipelines/Hauptprozess/stages/Init/tasks/Change Release Name.groovy").text,
    'shellToUse': 'ec-groovy',
  ]
  projectName = 'jzarzycki'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
