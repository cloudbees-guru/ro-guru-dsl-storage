
step 'Import Petclinic Project', {
  projectName = 'Guru'
  subprocedure = 'importDslFromGitNew'
  subproject = '/plugins/EC-DslDeploy/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  actualParameter 'cleanup', '1'
  actualParameter 'config', '/projects/Administration/pluginConfigurations/ro-cloudbees-guru'
  actualParameter 'dest', 'dsl'
  actualParameter 'ignoreFailed', '0'
  actualParameter 'incrementalImport', '0'
  actualParameter 'localMode', '0'
  actualParameter 'overwrite', '1'
  actualParameter 'repoUrl', 'https://github.com/cloudbees-guru/ro-guru-dsl-storage.git'
  actualParameter 'rsrcName', 'local'
}
