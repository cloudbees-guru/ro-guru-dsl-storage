
task 'grz', {
  actualParameter = [
    'paketnummer': '123',
  ]
  condition = '$[/javascript myReleaseRuntime.stages.Init.tasks["Manually select Release"].operators.includes("grz")]'
  groupName = 'Group Releases'
  projectName = 'jzarzycki'
  subErrorHandling = 'continueOnError'
  subproject = 'jzarzycki'
  subrelease = 'jazsd_123'
  taskType = 'RELEASE'
  triggerType = 'async'
}
