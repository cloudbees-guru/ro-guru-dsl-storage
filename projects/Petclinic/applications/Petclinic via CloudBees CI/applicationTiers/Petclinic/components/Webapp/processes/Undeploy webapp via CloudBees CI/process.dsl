import java.io.File


process 'Undeploy webapp via CloudBees CI', {
  description = 'Undeploys current application from Tomcat'
  processType = 'UNDEPLOY'
  projectName = 'Petclinic'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'CloudBees CI', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Petclinic via CloudBees CI/applicationTiers/Petclinic/components/Webapp/processes/Undeploy webapp via CloudBees CI/processSteps/CloudBees CI.cmd").text,
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'failProcedure'
    processStepType = 'command'
    projectName = 'Petclinic'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }
}
