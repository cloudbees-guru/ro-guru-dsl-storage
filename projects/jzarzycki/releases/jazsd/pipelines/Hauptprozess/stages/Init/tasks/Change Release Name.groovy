import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*
ElectricFlow ef = new ElectricFlow()

def name = ef.getProperty(propertyName: '/myReleaseRuntime/serviceName').property.value
def version = ef.getProperty(propertyName: '/myReleaseRuntime/serviceVersion').property.value

def result = ef.setProperty(
propertyName: '/myReleaseRuntime/releaseName', value: name + " - " + version)
