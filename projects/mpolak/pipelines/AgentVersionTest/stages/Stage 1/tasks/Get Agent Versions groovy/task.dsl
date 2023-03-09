import java.io.File


task 'Get Agent Versions groovy', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/AgentVersionTest/stages/Stage 1/tasks/Get Agent Versions groovy.groovy").text,
    'shellToUse': 'ec-groovy',
  ]
  projectName = 'mpolak'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
