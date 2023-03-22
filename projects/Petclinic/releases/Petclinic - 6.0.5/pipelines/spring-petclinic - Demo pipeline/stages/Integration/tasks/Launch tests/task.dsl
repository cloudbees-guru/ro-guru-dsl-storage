import java.io.File


task 'Launch tests', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Petclinic - 6.0.5/pipelines/spring-petclinic - Demo pipeline/stages/Integration/tasks/Launch tests.cmd").text,
  ]
  projectName = 'Petclinic'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
