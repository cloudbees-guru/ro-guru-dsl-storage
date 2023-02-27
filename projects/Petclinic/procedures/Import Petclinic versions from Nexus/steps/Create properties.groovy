import groovy.json.JsonSlurper
import com.electriccloud.client.groovy.ElectricFlow
ef = new ElectricFlow()

def jsonSlurper = new JsonSlurper()
def nexusResponse = new URL('https://nexus.cloudbees.guru:8081/service/rest/v1/search?repository=shared-demos&group=org.springframework.samples&name=spring-petclinic').text;
ef.deleteProperty(propertyName: "/projects/Petclinic/myArtifactVersions")
for (entry in jsonSlurper.parseText(nexusResponse).get("items")) {
    ef.setProperty(propertyName: "/projects/Petclinic/myArtifactVersions/$entry.version", value: "$entry.version")
}