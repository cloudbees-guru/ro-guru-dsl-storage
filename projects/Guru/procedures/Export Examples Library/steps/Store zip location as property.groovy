import com.electriccloud.client.groovy.ElectricFlow

ElectricFlow ef = new ElectricFlow()

//ef.setProperty propertyName: "/myJob/zip_location", value: "https://flow.cloudbees.guru/examples-library-$[/myJob/timestamp].tar.gz"
ef.setProperty propertyName: "/myJob/zip_location", value: "Find correct pod name and then download the export locally using command similar to:\nkubectl cp flow-bound-agent-f64f59c89-wqfwq:/tmp/cbflow-exports/examples-library-$[/myJob/timestamp]/examples-library-$[/myJob/timestamp].tar.gz examples-library-$[/myJob/timestamp].tar.gz -n cloudbees-cdro"