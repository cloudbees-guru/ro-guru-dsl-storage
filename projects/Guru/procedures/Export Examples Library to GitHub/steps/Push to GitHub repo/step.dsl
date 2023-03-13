
step 'Push to GitHub repo', {
  projectName = 'Guru'
  subprocedure = 'Commit'
  subproject = '/plugins/EC-Git/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'config', '/projects/Guru/pluginConfigurations/Examples Library'
  actualParameter 'failOnEmptyCommit', 'false'
  actualParameter 'files', '.'
  actualParameter 'gitRepoFolder', '/tmp/exampleslibrary'
  actualParameter 'message', 'push from ro.cloudbees.guru, procedure Export Examples Library'
  actualParameter 'push', 'true'
  actualParameter 'remote', 'origin'
  actualParameter 'removeMissing', 'false'
  actualParameter 'resultPropertySheet', '/myJob/commit'
}
