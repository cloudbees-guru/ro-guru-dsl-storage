
task 'SonarQube Gate', {
  actualParameter = [
    'projectKey': 'org.springframework.samples:spring-petclinic',
    'projectName': 'petclinic',
    'projectVersion': '3.0.1-SNAPSHOT',
  ]
  gateType = 'POST'
  projectName = 'Petclinic'
  resourceName = 'local'
  subprocedure = 'Check SonarQube quality gate'
  subproject = 'Petclinic'
  taskType = 'PROCEDURE'
}
