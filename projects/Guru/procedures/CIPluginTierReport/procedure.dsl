
procedure 'CIPluginTierReport', {
  projectName = 'Guru'
  timeLimit = '0'

  formalParameter 'version', defaultValue: '2.361.4.1', {
    description = 'Which CloudBees CI version to check the plugins against (e.g. 2.346.1.1)'
    label = 'Version'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'envelope', defaultValue: 'envelope-core-cm', {
    description = 'Which plugin envelope to check (e.g. envelope-core-cm)'
    label = 'Envelope'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'pluginsToCheck', defaultValue: '''ant:1.11
apache-httpcomponents-client-4-api:4.5.13-1.0
authentication-tokens:1.4''', {
    description = 'Provide a list of plugins to check, one plugin per line.  Each line can include the plugin version after a colon (e.g. ant:1.11).  If the version is included then the report will also show whether it matches the version in CAP.'
    label = 'List of plugins to check'
    orderIndex = '3'
    required = '1'
    type = 'textarea'
  }

  formalParameter 'groupResults', defaultValue: 'false', {
    description = '''If unchecked, plugins will be listed as before with Verified or Compatible added to each of each line.
If checked, plugins are grouped under their tier headings.'''
    checkedValue = 'true'
    label = 'Group Results'
    orderIndex = '4'
    type = 'checkbox'
    uncheckedValue = 'false'
  }
}
