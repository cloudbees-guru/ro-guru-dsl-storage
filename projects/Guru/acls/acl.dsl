
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: Guru', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
