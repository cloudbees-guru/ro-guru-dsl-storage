import java.io.File


task 'Construct notification message', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/Guru System Status/stages/Notify/tasks/Construct notification message.groovy").text,
    'shellToUse': 'ec-groovy',
  ]
  projectName = 'Guru'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
