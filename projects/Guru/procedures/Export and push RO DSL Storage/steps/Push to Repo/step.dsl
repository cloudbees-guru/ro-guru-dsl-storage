
step 'Push to Repo', {
  projectName = 'Guru'
  subprocedure = 'Commit'
  subproject = '/plugins/EC-Git/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'config', '/projects/Administration/pluginConfigurations/ro-cloudbees-guru'
  actualParameter 'failOnEmptyCommit', 'false'
  actualParameter 'files', '.'
  actualParameter 'gitRepoFolder', '/tmp/ro-guru-dsl-storage'
  actualParameter 'message', 'push from ro.cloudbees.guru'
  actualParameter 'push', 'true'
  actualParameter 'remote', 'origin'
  actualParameter 'removeMissing', 'false'
  actualParameter 'resultPropertySheet', '/myJob/commit'
}
