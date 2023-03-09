import java.io.File


task 'Get Agent Versions ectool', {
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/AgentVersionTest/stages/Stage 1/tasks/Get Agent Versions ectool.cmd").text,
  ]
  projectName = 'mpolak'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
}
