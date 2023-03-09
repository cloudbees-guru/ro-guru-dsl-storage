
task 'SonarQube Gate', {
  actualParameter = [
    'projectKey': 'org.springframework.samples:spring-petclinic',
    'projectName': 'petclinic',
    'projectVersion': '2.7.3',
  ]
  gateType = 'POST'
  projectName = 'mpolak'
  resourceName = 'local'
  subprocedure = 'Check SonarQube quality gate'
  subproject = 'Petclinic'
  taskType = 'PROCEDURE'
}
