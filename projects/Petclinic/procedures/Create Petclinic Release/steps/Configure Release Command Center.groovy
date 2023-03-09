import groovy.json.JsonSlurper
import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.PluginParameter

ElectricFlow ef = new ElectricFlow()

/*
** Configure Jira data source for User Stores
*/
def jiraConfig = new PluginParameter(pluginParameterName: 'configName', value: "/projects/Petclinic/pluginConfigurations/Jira - cbdemo")
def jiraFrequency = new PluginParameter(pluginParameterName: 'frequency', value: "$[RCCpollingFrequency]")
def jiraFilter = new PluginParameter(pluginParameterName: 'jiraFilterType', value: "field")
def jiraProject = new PluginParameter(pluginParameterName: 'jiraProject', value: "Petclinic")

ef.createDevOpsInsightDataSource(projectName: "$[releaseProjName]", releaseName: "Petclinic - $[petclinicVersion]", description: "Petclinic User Stories from PET project in JIRA",
                                 devOpsInsightDataSourceName: "JIRA-stories",
                                 reportObjectTypeName: "feature",
                                 pluginKey: "EC-JIRA",
                                 pluginParameters: [jiraConfig, jiraFrequency, jiraFilter, jiraProject])

/*
** Configure Jenkins data source for Builds
*/
def jenkinsConfig = new PluginParameter(pluginParameterName: 'configName', value: "/projects/Petclinic/pluginConfigurations/CloudBees CI - Shared Demos")
def jenkinsFrequency = new PluginParameter(pluginParameterName: 'frequency', value: "$[RCCpollingFrequency]")
def jenkinsMultiBranch = new PluginParameter(pluginParameterName: 'isMultibranchPipelineJob', value: "0") // 0 for false, 1 for true
def jenkinsTestUrl = new PluginParameter(pluginParameterName: 'jenkinsTestUrl', value: "/testReport")
def jenkinsProject = new PluginParameter(pluginParameterName: 'jenkinsProject', value: "spring-petclinic/job/spring-petclinic-master-branch")

ef.createDevOpsInsightDataSource(projectName: "$[releaseProjName]", releaseName: "Petclinic - $[petclinicVersion]", description: "Petclinic builds in Jenkins",
                                 devOpsInsightDataSourceName: "Jenkins",
                                 reportObjectTypeName: "build",
                                 pluginKey: "EC-Jenkins",
                                 pluginParameters: [jenkinsConfig, jenkinsFrequency, jenkinsMultiBranch, jenkinsTestUrl, jenkinsProject])

/*
** Configure CloudBees Feature Management data source for Feature Flags
*/
def ffConfig = new PluginParameter(pluginParameterName: 'config', value: "/projects/Petclinic/pluginConfigurations/CloudBees Feature Management")
def ffFrequency = new PluginParameter(pluginParameterName: 'frequency', value: "$[RCCpollingFrequency]")
def ffenvName = new PluginParameter(pluginParameterName: 'envName', value: "Production")
def ffapplicationId = new PluginParameter(pluginParameterName: 'applicationId', value: "615c016ca7889d30e27333ad")

ef.createDevOpsInsightDataSource(projectName: "$[releaseProjName]", releaseName: "Petclinic - $[petclinicVersion]", description: "Petclinic Feature Flags",
                                 devOpsInsightDataSourceName: "FeatureFlags",
                                 reportObjectTypeName: "feature_flags",
                                 pluginKey: "EC-FeatureFlags",
                                 pluginParameters: [ffConfig, ffFrequency, ffenvName, ffapplicationId])