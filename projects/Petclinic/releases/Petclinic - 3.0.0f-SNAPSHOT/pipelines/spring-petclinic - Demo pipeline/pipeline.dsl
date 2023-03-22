
pipeline 'spring-petclinic - Demo pipeline', {
  description = '''Demo pipeline based on Petclinic
- 2 components (Frontend /  Database)
- 1 application
- Jira integration
- ServiceNow integration'''
  projectName = 'Petclinic'
  releaseName = 'Petclinic - 3.0.0f-SNAPSHOT'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
