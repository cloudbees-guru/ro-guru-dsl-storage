
step 'Clone Repo', {
  projectName = 'Guru'
  subprocedure = 'Clone'
  subproject = '/plugins/EC-Git/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'config', '/projects/Guru/pluginConfigurations/Examples Library'
  actualParameter 'gitRepoFolder', '/tmp/exampleslibrary'
  actualParameter 'mirror', 'false'
  actualParameter 'overwrite', 'true'
  actualParameter 'repoUrl', 'https://github.com/cloudbees-guru/cd-examples-library.git'
  actualParameter 'resultPropertySheet', '/myJob/clone'
  actualParameter 'shallowSubmodules', 'false'
  actualParameter 'submodules', 'false'
}
