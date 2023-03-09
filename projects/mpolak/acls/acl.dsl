
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: mpolak', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
