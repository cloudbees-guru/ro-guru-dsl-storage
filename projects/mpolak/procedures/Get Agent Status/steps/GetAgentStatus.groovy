import com.electriccloud.client.groovy.ElectricFlow

// Instantiate ElectricFlow instance
ElectricFlow ef = new ElectricFlow()

// Invoke API
def result = ef.getResources()



// Handle response
result.each { key, val ->
  //sprintf('%s,%s,%s',"$val.resourceName",$val.
  //sprintf("$val.resourceName")
  //printf("$val.resourceName ,,,,, $val.resourceAgentVersion ,++++, $val.agentState.state \n")
  println val.resourceName.size()
  for (String agent : val.resourceName) {
    println agent
  }
  //for (int i in 1..val.resourceName.size) {
  //  println($val.resourceName[i])
  //}
}

println result.getClass()