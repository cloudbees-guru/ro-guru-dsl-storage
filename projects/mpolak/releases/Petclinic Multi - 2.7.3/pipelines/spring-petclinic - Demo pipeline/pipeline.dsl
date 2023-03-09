
pipeline 'spring-petclinic - Demo pipeline', {
  description = '''Demo pipeline based on Petclinic
- 2 components (Frontend /  Database)
- 1 application
- Jira integration
- ServiceNow integration'''
  projectName = 'mpolak'
  releaseName = 'Petclinic Multi - 2.7.3'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
