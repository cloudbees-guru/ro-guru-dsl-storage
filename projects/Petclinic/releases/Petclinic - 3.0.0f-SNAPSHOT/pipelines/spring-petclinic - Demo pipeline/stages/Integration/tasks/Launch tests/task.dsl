import java.io.File


task 'Launch tests', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Petclinic - 3.0.0f-SNAPSHOT/pipelines/spring-petclinic - Demo pipeline/stages/Integration/tasks/Launch tests.cmd").text,
  ]
  projectName = 'Petclinic'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
