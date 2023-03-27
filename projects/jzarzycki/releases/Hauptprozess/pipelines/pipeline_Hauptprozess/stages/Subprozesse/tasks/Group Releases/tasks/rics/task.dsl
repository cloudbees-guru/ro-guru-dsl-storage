
task 'rics', {
  actualParameter = [
    'paketnummer': '$[/myStageRuntime/tasks/get Paketnummer/paketnummer]',
  ]
  condition = '$[/javascript myReleaseRuntime.stages.Init.tasks["Manually select Release"].operators.includes("rics")]'
  groupName = 'Group Releases'
  projectName = 'jzarzycki'
  subErrorHandling = 'continueOnError'
  subproject = 'jzarzycki'
  subrelease = 'Service1 - rics'
  taskType = 'RELEASE'
  triggerType = 'sync'
}
