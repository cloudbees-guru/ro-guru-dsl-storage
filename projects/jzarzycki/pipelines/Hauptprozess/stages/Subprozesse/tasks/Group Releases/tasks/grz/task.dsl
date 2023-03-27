
task 'grz', {
  actualParameter = [
    'paketnummer': '123',
  ]
  condition = '$[/javascript myReleaseRuntime.stages.Init.tasks["Manually select Release"].operators.includes("grz")]'
  groupName = 'Group Releases'
  projectName = 'jzarzycki'
  subErrorHandling = 'continueOnError'
  subproject = 'jzarzycki'
  subreleasePipeline = 'Service1 - grz'
  subreleasePipelineProject = 'jzarzycki'
  subreleaseSuffix = 'grz'
  taskType = 'RELEASE'
  triggerType = 'async'
}
