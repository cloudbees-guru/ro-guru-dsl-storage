import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*

ElectricFlow ef = new ElectricFlow()

// def jsonSlurper = new JsonSlurper()

def jiraids = ef.getProperty(propertyName: '/myStageRuntime/tasks["Get JIRA Releases"]/job/outputParameters/jiraids').property.value



// def object = jsonSlurper.parseText('{ "name": "John Doe" } /* some comment */')



def result = ef.setProperty(
  propertyName: '/myPipelineRuntime/inputRequired', value: 'FALSE')
result = ef.createProperty(
  propertyName: '/myPipelineRuntime/responsibleUsers', value: 'jzarzycki, mpolak')
result = ef.createProperty(
  propertyName: '/myPipelineRuntime/responsibleUsersMails', value: 'jzarzycki@cloudbees.com; mpolak@cloudbees.com')
result = ef.createProperty(
  propertyName: '/myPipelineRuntime/operator', value: 'grz, r-it, rics')

//def jiraIdList = 

result = ef.createProperty(
  propertyName: '/myPipelineRuntime/jiraidlist', value: jiraids.replace(", ", "|") )

// Create Propertysheet:

def jiraIdList = jiraids.replace(", ", "|").split("\\|")

def counter = 1

for(jiraId in jiraIdList){
  result = ef.createProperty(
    propertyName: '/myPipelineRuntime/jiraids/' + jiraId, value: jiraId )
  counter++
}

