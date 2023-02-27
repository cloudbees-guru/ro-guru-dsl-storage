import groovy.json.JsonSlurper
import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.PluginParameter

ElectricFlow ef = new ElectricFlow()

/*
** Retrieve Schedules
*/
def allSchedules = ef.getSchedules(projectName: "$[releaseProjName]")

allSchedules.schedule.each { schedule ->
	// Set permission for EC-Jenkins plugin
	if (schedule.scheduleName.startsWith("Petclinic - $[petclinicVersion]_build")) {
        def myJenkinsPlugin= ef.getPlugin(pluginName: 'EC-Jenkins').plugin.pluginName
        def myPrincipalName= 'project: ' + myJenkinsPlugin
        print "Adding execute permissions for $myJenkinsPlugin to $schedule.scheduleName \n"
        ef.createAclEntry(projectName: "$[releaseProjName]",
        				  principalType: 'user',
                          principalName: "$myPrincipalName",
                          scheduleName:  "$schedule.scheduleName",
                          modifyPrivilege: 'allow')
    } else if (schedule.scheduleName.startsWith("Petclinic - $[petclinicVersion]_feature_flags")) {
        def myFFPlugin= ef.getPlugin(pluginName: 'EC-FeatureFlags').plugin.pluginName
        def myPrincipalName= 'project: ' + myFFPlugin
        print "Adding execute permissions for $myFFPlugin to $schedule.scheduleName \n"
        ef.createAclEntry(projectName: "$[releaseProjName]",
        				  principalType: 'user',
                          principalName: "$myPrincipalName",
                          scheduleName:  "$schedule.scheduleName",
                          modifyPrivilege: 'allow')
    }
}