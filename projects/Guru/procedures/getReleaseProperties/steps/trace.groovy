import groovy.json.*
import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*
/***************************************************************************************/
def printProperties( path ) {
	ElectricFlow ef = new ElectricFlow()
	PropertyStucture = ef.getProperties(path: path, recurse: true, expand: false).propertySheet
    try {
      propList = PropertyStucture.property
      for (myProperty in propList) {
          if ( myProperty.propertySheet != null ) {
              //println ">>> property sheet " + myProperty.propertyName
              printProperties( path + "/" + myProperty.propertyName )
              //println "<<< property sheet " + myProperty.propertyName
          } else {
              println path + "/" + myProperty.propertyName + " = " + myProperty.value
          }
      }
    } catch( Exception ex ) {
    	println myProperty.propertyName + " = NOT FOUND"
    }
}
/***************************************************************************************/
def printObj( basePath, propList ) {
    if ( propList instanceof org.apache.groovy.json.internal.LazyMap ) {
      propList.each{ key, value -> 
        if ( value instanceof java.lang.String ) {
            println basePath + "/" + key + " = " + value
        } else {
            //println basePath + "/" + key + " Class = " + value.getClass()
            printObj( basePath + "/" + key, value )
        }
      }
    }
    /*
    if ( propList instanceof java.util.ArrayList ) {
        println "==== ARRAYLIST ====="
    	propList.each{ it ->
        	println basePath + " = " + it
            printObj( basePath, it )
        }
        println "==== ARRAYLIST ====="
    }
    */
}
/***************************************************************************************/
def printTasks( basePath, stageName, taskList, projName, relName, pipName ) {
    ElectricFlow ef = new ElectricFlow()
    try {
    for (tasks in taskList) {
        thisTask = basePath + "/tasks/" + tasks.taskName
		def taskResult = ef.getTask(
                projectName: projName,
                releaseName: relName,
                pipelineName: pipName,
                taskName: tasks.taskName,
                stageName: stageName)
        println "\n***** Task '" + tasks.taskName + "' Properties: *****"        
        printObj( thisTask, taskResult.task )
		if (tasks.taskType == "GROUP") {
            groupTaskList = tasks.task
            printTasks( thisTask, stageName, groupTaskList, projName, relName, pipName )
        } else {
          printProperties( thisTask )
          try {
	          thisJob = thisTask + "/job"
    	      printProperties( thisJob )
          } catch( Exception ex ) {
          	//println "No Job Data"
          }
        }
    }
  } catch(Exception ex) {
      //println "Problem getting task data " + ex
  }
}
/***************************************************************************************/
def printStages( basePath, stageList, projName, relName, pipName ) {
  ElectricFlow ef = new ElectricFlow()
  for (stages in stageList) {
       try {
          thisStage = basePath + "/stages/" + stages.stageName
          stage = ef.getProperty( propertyName: basePath + "/stages/" + stages.stageName ).property.value
          def stageResult = ef.getStage(
                          stageName:  stages.stageName,
                          projectName: projName,
                          releaseName: relName,
                          pipelineName: pipName)
		  //println JsonOutput.prettyPrint(JsonOutput.toJson(stageResult))
          println "\n\n******** Stage '" + stages.stageName + "' Properties: ********"
		  printObj( thisStage, stageResult.stage )
		  def taskResult = ef.getTasks(
                  stageName:  stages.stageName,
                  projectName: projName,
                  releaseName: relName,
                  pipelineName: pipName)
          taskList = taskResult.task
          taskPath = basePath + "/stages/" + stages.stageName 
          printTasks( taskPath, stages.stageName, taskList, projName, relName, pipName )
      } catch(Exception ex) {
          //println "Problem getting stage data " + ex
      }
  }
}
/***************************************************************************************/
def printPipeline( projName, relName, pipName, basePath ) {
  ElectricFlow ef = new ElectricFlow()
  def relResult = ef.getRelease (
                  releaseName: relName,
                  projectName: projName)
  println "****** Release Properties: ******"
  printObj( basePath, relResult.release )
  println "****** Pipeline Properties: ******"
  printObj( basePath, relResult.pipeline )
  println "****** Root Properties: ******"
  printProperties( basePath )
  def stagesResult = ef.getStages(
                  projectName: projName,
                  releaseName: relName,
                  pipelineName: pipName)
  def stageList = stagesResult.stage
  printStages( basePath, stageList, projName, relName, pipName )
}
/***************************************************************************************
 ***                                M A I N
 ***************************************************************************************/
ElectricFlow ef = new ElectricFlow()
projName = ef.getProperty( propertyName: "/myReleaseRuntime/projectName" ).property.value
relName = ef.getProperty( propertyName: "/myReleaseRuntime/releaseName" ).property.value
pipName = ef.getProperty( propertyName: "/myReleaseRuntime/pipelineName" ).property.value
println "Project Name: " + projName
println "Release Name: " + relName
println "PipelineName: " + pipName

//Get Pipeline Object
println "*****************************************************************"
basePath="/myReleaseRuntime"
printPipeline( projName, relName, pipName, basePath )
basePath="/myRelease"
printPipeline( projName, relName, pipName, basePath )
println "*****************************************************************"
