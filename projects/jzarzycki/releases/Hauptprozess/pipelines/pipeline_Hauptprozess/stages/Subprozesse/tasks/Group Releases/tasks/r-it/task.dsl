
task 'r-it', {
  condition = '$[/javascript myReleaseRuntime.stages.Init.tasks["Manually select Release"].operators.includes("r-it")]'
  groupName = 'Group Releases'
  projectName = 'jzarzycki'
  subErrorHandling = 'continueOnError'
  subproject = 'jzarzycki'
  subrelease = 'Service1 - r-it'
  taskType = 'RELEASE'
  triggerType = 'sync'
}
