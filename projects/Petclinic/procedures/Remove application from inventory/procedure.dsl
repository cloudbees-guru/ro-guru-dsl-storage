
procedure 'Remove application from inventory', {
  description = ''
  jobNameTemplate = ''
  projectName = 'Petclinic'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'applicationHeader', {
    expansionDeferred = '0'
    label = 'Application'
    orderIndex = '1'
    required = '0'
    type = 'header'
  }

  formalParameter 'applicationProject', defaultValue: '', {
    description = 'The Project in which the Application exists'
    expansionDeferred = '0'
    label = 'Application Project'
    orderIndex = '2'
    required = '1'
    type = 'project'
  }

  formalParameter 'applicationListResult', defaultValue: '', {
    dependsOn = 'applicationProject'
    expansionDeferred = '1'
    label = 'Select Application(s)'
    multiSelect = '1'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def myParams = getFormalParameter(projectName: \'Petclinic\',
                                  procedureName: \'Remove application from inventory\',
                                  formalParameterName: \'applicationProject\')

def options = new FormalParameterOptionsResult()
options.add(myParams.value, myParams.value)
return options'''
    orderIndex = '3'
    required = '1'
    type = 'select'
  }
}
