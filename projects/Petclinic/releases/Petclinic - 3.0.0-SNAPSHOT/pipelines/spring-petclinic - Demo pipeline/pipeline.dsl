
pipeline 'spring-petclinic - Demo pipeline', {
  description = '''Demo pipeline based on Petclinic
- 2 components (Frontend /  Database)
- 1 application
- Jira integration
- ServiceNow integration'''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'Petclinic'
  releaseName = 'Petclinic - 3.0.0-SNAPSHOT'
  skipStageMode = 'ENABLED'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
