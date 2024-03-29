
pipeline 'spring-petclinic - Demo pipeline', {
  description = '''Demo pipeline based on Petclinic
- 2 components (Frontend /  Database)
- 1 application
- Jira integration
- ServiceNow integration'''
  projectName = 'Petclinic'
  releaseName = 'Petclinic - 6.0.5'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
