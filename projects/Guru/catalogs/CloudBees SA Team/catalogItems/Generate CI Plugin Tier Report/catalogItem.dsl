
catalogItem 'Generate CI Plugin Tier Report', {
  description = '''<xml>
  <title>
    
  </title>

  <htmlData>
    <![CDATA[
      Generate a CI Plugin Tier Report.&nbsp; Provide a list of plugins (with or without version) and this procedure will identify the tier for each plugin.&nbsp; If a version is supplied it will also identify if it matches the version in CAP.
    ]]>
  </htmlData>
</xml>'''
  buttonLabel = 'Create'
  catalogName = 'CloudBees SA Team'
  iconUrl = 'icon-process.svg'
  projectName = 'Guru'
  subprocedure = 'CIPluginTierReport'
}
