import com.electriccloud.client.groovy.ElectricFlow

// Instantiate ElectricFlow instance
ElectricFlow ef = new ElectricFlow()

// Invoke API
def result = ef.getResources()



// Handle response
result.each { key, val ->

  println "Agent:\tVersion:\tState:"
  [val.resourceName, val.resourceAgentVersion, val.resourceAgentState].transpose().each { name, vers, state -> printf("%s\t%s\t%s\n", name, vers, state) }
	printf("%1s  %-7s   %-7s   %-6s   %-6s%n", "n", "result1", "result2", "time1", "time2");
	printf("%1d  %7.2f   %7.1f   %4dms   %4dms%n", 5, 1000F, 20000F, 1000, 1250);
}