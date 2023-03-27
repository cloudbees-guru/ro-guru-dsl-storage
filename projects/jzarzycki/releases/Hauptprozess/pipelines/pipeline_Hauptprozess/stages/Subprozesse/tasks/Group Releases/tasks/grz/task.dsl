
task 'grz', {
  actualParameter = [
    'paketnummer': '$[/myStageRuntime/tasks/get Paketnummer/paketnummer]',
  ]
  condition = '$[/javascript myReleaseRuntime.stages.Init.tasks["Manually select Release"].operators.includes("grz")]'
  groupName = 'Group Releases'
  projectName = 'jzarzycki'
  subErrorHandling = 'continueOnError'
  subproject = 'jzarzycki'
  subrelease = 'Service1 - grz'
  taskType = 'RELEASE'
  triggerType = 'sync'
}
