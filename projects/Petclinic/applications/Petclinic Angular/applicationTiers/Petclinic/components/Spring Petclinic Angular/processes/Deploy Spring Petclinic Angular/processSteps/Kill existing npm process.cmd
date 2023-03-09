petclinicPID=`pm2 pid petclinic`
if [ ! -z $petclinicPID ] ; then
	pm2 delete petclinic 2>&1 && return 0
fi