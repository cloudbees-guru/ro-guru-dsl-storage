import java.io.File


task 'Launch tests', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/Petclinic Multi - 2.7.3/pipelines/spring-petclinic - Demo pipeline/stages/UAT/tasks/Launch tests.cmd").text,
  ]
  projectName = 'mpolak'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
