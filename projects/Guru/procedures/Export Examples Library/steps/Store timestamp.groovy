import com.electriccloud.client.groovy.ElectricFlow

ElectricFlow ef = new ElectricFlow()

ef.setProperty propertyName: "/myJob/timestamp", value: "$[/timestamp yyyy-M-d-hh-mm]"