import java.io.File


task 'Launch tests', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Petclinic - 2.7.0-SNAPSHOT/pipelines/spring-petclinic - Demo pipeline/stages/UAT/tasks/Launch tests.cmd").text,
  ]
  projectName = 'Petclinic'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
