
acl {
  inheriting = '1'

  aclEntry 'user', principalName: 'project: jzarzycki', {
    changePermissionsPrivilege = 'allow'
    executePrivilege = 'allow'
    modifyPrivilege = 'allow'
    readPrivilege = 'allow'
  }
}
