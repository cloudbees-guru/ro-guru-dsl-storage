
procedure 'Remove application from inventory', {
  projectName = 'Petclinic'
  timeLimit = '0'

  formalParameter 'applicationHeader', {
    label = 'Application'
    orderIndex = '1'
    type = 'header'
  }

  formalParameter 'applicationProject', defaultValue: '', {
    description = 'The Project in which the Application exists'
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
