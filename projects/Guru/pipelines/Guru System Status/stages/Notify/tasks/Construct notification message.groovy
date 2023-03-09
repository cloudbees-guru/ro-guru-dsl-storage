import groovy.json.JsonSlurper
import com.electriccloud.client.groovy.ElectricFlow
ef = new ElectricFlow()

//define method for instance version check
def check(url, stage, outputparam, versionfield) {
  	def instProps = "/myPipelineRuntime/stages/" + stage + "/tasks/Get " + url + " version/job/"
    def status = ef.getProperty(propertyName: instProps + "outcome").property.value
    if (status == "success") {
        def output = ef.getProperty(propertyName: instProps + "/outputParameters/" + outputparam).property.value
        def jsonSlurper = new JsonSlurper()
        def version = versionfield.split(/\./).inject(new JsonSlurper().parseText(output)) { map, key -> map[key] }
        msg = msg + "<p><b>" + url + "</b> is alive and running version " + version + "</p>"
      	//repeat for agents
      	if(stage == "CBCD") {
          def resProps = "/myPipelineRuntime/stages/" + stage + "/tasks/Get " + url + " resources/job/"
          def resOut = ef.getProperty(propertyName: resProps + "/outputParameters/" + outputparam).property.value
          def tbl = ""
          def tblNotEmpty = false
          msg = msg + "<p> Running resources: " + jsonSlurper.parseText(resOut).resource.size() + "</p>"
          tbl = "<p>Resources with versions not matching the server version:</p><table><thead><tr><th>Agent Name</th><th>Status</th><th>Version</th></tr></thead><tbody>"
          jsonSlurper.parseText(resOut).resource.each { res ->
              def resNam = res.resourceName
              def resVer = res.resourceAgentVersion
              def resStat = res.resourceAgentState
              if (resVer != version) {
  	            tbl = tbl + "<tr><td>" + resNam + "</td><td>" + resStat + "</td><td>" + resVer + "</td></tr>"
                tblNotEmpty = true
              }
          }
          tbl = tbl + "</tbody></table>"
          msg = tblNotEmpty ? msg + tbl : msg
        }
    } else {
        msg = msg + "<p><b>" + url + "</b> appears to be down</p>"
    }
}

// Start message body
msg = "<html>"

// Check each instance
check("core.cloudbees.guru", "CBCI", "headers", "x-jenkins")
check("ro.cloudbees.guru", "CBCD", "body", "serverVersion.version")
check("cbcd-examples.cloudbees.guru", "CBCD", "body", "serverVersion.version")
check("cbcd-preview.cloudbees.guru", "CBCD", "body", "serverVersion.version")

// End message body
msg = msg + "</html>"

println msg
ef.setProperty(propertyName: "/myPipelineRuntime/notificationMessage", value: msg)