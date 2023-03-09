
step 'Clone Repo', {
  projectName = 'Guru'
  subprocedure = 'Clone'
  subproject = '/plugins/EC-Git/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'config', '/projects/Administration/pluginConfigurations/ro-cloudbees-guru'
  actualParameter 'gitRepoFolder', '/tmp/ro-guru-dsl-storage'
  actualParameter 'mirror', 'false'
  actualParameter 'overwrite', 'true'
  actualParameter 'repoUrl', 'https://github.com/cloudbees-guru/ro-guru-dsl-storage.git'
  actualParameter 'resultPropertySheet', '/myJob/clone'
  actualParameter 'shallowSubmodules', 'false'
  actualParameter 'submodules', 'false'
}
