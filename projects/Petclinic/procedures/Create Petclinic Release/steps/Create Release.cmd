release 'Petclinic - ' + '$[petclinicVersion]', {
  plannedEndDate = '$[releaseEndDate]'
  plannedStartDate = '$[releaseStartDate]'
  projectName = '$[releaseProjName]'

  pipeline 'spring-petclinic - Demo pipeline', {
    description = '''Demo pipeline based on Petclinic
- 2 components (Frontend /  Database)
- 1 application
- Jira integration
- ServiceNow integration'''
    releaseName = 'Petclinic - $[petclinicVersion]'
    templatePipelineName = 'spring-petclinic - Demo pipeline'
    templatePipelineProjectName = 'Petclinic'

    formalParameter 'ec_stagesToRun', {
      expansionDeferred = '1'
    }

    stage 'Development', {
      colorCode = '#289ce1'
      pipelineName = 'spring-petclinic - Demo pipeline'
      gate 'PRE', {
        }

      gate 'POST', {
        task 'SonarQube Gate', {
          actualParameter = [
            'projectKey': 'org.springframework.samples:spring-petclinic',
            'projectName': 'petclinic',
            'projectVersion': '$[petclinicVersion]',
          ]
          gateType = 'POST'
          resourceName = 'local'
          subprocedure = 'Check SonarQube quality gate'
          subproject = 'Petclinic'
          taskType = 'PROCEDURE'

          // Custom properties
          subservice = ''
        }
      }

      task 'Run in parallel', {
        subproject = 'Petclinic'
        taskType = 'GROUP'

        task 'CI Build Infos', {
          actualParameter = [
            'build_number': '',
            'config_name': '/projects/Petclinic/pluginConfigurations/CloudBees CI - Shared Demos',
            'job_name': 'spring-petclinic/job/spring-petclinic-multibranch/job/main',
            'need_to_run_report': '1',
            'result_outpp': '/myJobStep/buildDetails',
          ]
          groupName = 'Run in parallel'
          resourceName = 'local'
          stageSummaryParameters = '[{"name":"jenkinsjoburl","label":"jenkinsjoburl"},{"name":"jenkinsbuildurl","label":"jenkinsbuildurl"},{"name":"jenkinsbuildnumber","label":"jenkinsbuildnumber"}]'
          subpluginKey = 'EC-Jenkins'
          subprocedure = 'GetBuildDetails'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        task 'Jira', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/Jira - cbdemo',
            'createLink': '1',
            'fieldsToSave': '',
            'filter': '10011',
            'jql': '',
            'maxResults': '100',
            'resultFormat': 'propertySheet',
            'resultProperty': '/myJob/getIssuesResult',
          ]
          groupName = 'Run in parallel'
          stageSummaryParameters = '[{"name":"jiraids","label":"jiraids"},{"name":"jirareporturl","label":"jirareporturl"}]'
          subpluginKey = 'EC-JIRA'
          subprocedure = 'GetIssues'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        task 'SonarQube', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/SonarQube',
            'resultFormat': 'propertysheet',
            'resultSonarProperty': '/myJob/getLastSonarMetrics',
            'sonarMetricsComplexity': 'all',
            'sonarMetricsDocumentation': 'all',
            'sonarMetricsDuplications': 'all',
            'sonarMetricsIssues': 'all',
            'sonarMetricsMaintainability': 'all',
            'sonarMetricsMetrics': 'all',
            'sonarMetricsQualityGates': 'all',
            'sonarMetricsReliability': 'all',
            'sonarMetricsSecurity': 'all',
            'sonarMetricsTests': 'all',
            'sonarProjectKey': 'org.springframework.samples:spring-petclinic',
            'sonarProjectName': 'petclinic',
            'sonarProjectVersion': '$[petclinicVersion]',
            'sonarTaskId': '',
            'sonarTimeout': '',
          ]
          groupName = 'Run in parallel'
          subpluginKey = 'EC-SonarQube'
          subprocedure = 'Get Last SonarQube Metrics'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        // Custom properties
        subservice = ''
      }
    }

    stage 'Integration', {
      colorCode = '#ff7f0e'
      duration = '0'
      pipelineName = 'spring-petclinic - Demo pipeline'
      gate 'PRE', {
        }

      gate 'POST', {
        }

      task 'Deploy', {
        deployerRunType = 'serial'
        subproject = 'Petclinic'
        taskType = 'DEPLOYER'

        // Custom properties
        subservice = ''
      }

      task 'Launch tests', {
        actualParameter = [
          'commandToRun': 'echo "Launch automated tests..."',
        ]
        subpluginKey = 'EC-Core'
        subprocedure = 'RunCommand'
        taskType = 'COMMAND'

        // Custom properties
        subservice = ''
      }

      task 'Notifications', {
        subproject = 'Petclinic'
        taskType = 'GROUP'

        task 'Teams notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/Microsoft Teams',
            'message': 'Deployment successful on environment ' + '$' + '[/myStage/name]',
            'webhookUrl': 'https://cloudbees727.webhook.office.com/webhookb2/40fd35a3-af5b-44a5-8141-6497f32cf18e@7d42b7c8-0dc2-4512-81ce-de54c7e779b2/IncomingWebhook/e4945d37631141c6a2e01d43e88d6e6d/23cb29a1-e36c-47ca-a15b-f28ccbf66aa0',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Microsoft-Teams'
          subprocedure = 'Send Message'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        task 'Slack notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
            'payload': '{"text":"Deployment OK in $' + '[/myStage/name]"}',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Slack'
          subprocedure = 'Send Realtime Message'
          taskType = 'PLUGIN'
        }
      }
    }

    stage 'UAT', {
      colorCode = '#2ca02c'
      pipelineName = 'spring-petclinic - Demo pipeline'
      gate 'PRE', {
        }

      gate 'POST', {
        task 'Automated tests gate', {
          gateCondition = 'true'
          gateType = 'POST'
          subproject = 'Petclinic'
          taskType = 'CONDITIONAL'

          // Custom properties
          subservice = ''
        }
      }

      task 'Deploy', {
        deployerRunType = 'serial'
        subproject = 'Petclinic'
        taskType = 'DEPLOYER'

        // Custom properties
        subservice = ''
      }

      task 'Launch tests', {
        actualParameter = [
          'commandToRun': 'echo "Launch automated tests..."',
        ]
        subpluginKey = 'EC-Core'
        subprocedure = 'RunCommand'
        taskType = 'COMMAND'

        // Custom properties
        subservice = ''
      }

      task 'Notifications', {
        subproject = 'Petclinic'
        taskType = 'GROUP'

        task 'Teams notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/Microsoft Teams',
            'message': 'Deployment successful on ' + '$' + '[/myStage/name]',
            'webhookUrl': 'https://cloudbees727.webhook.office.com/webhookb2/40fd35a3-af5b-44a5-8141-6497f32cf18e@7d42b7c8-0dc2-4512-81ce-de54c7e779b2/IncomingWebhook/e4945d37631141c6a2e01d43e88d6e6d/23cb29a1-e36c-47ca-a15b-f28ccbf66aa0',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Microsoft-Teams'
          subprocedure = 'Send Message'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        task 'Slack notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
            'payload': '{"text":"Deployment OK in $' + '[/myStage/name]\\nPlease validate the deployment: https://ro.cloudbees.guru/flow/#pipeline-run/$' + '[/myRelease/id]/$' + '[/myReleaseRuntime/id]/release/$' + '[/myRelease/id]"}',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Slack'
          subprocedure = 'Send Realtime Message'
          taskType = 'PLUGIN'
        }
      }

      task 'Manual tests approval', {
        instruction = 'Approve when the Manual Tests have been run and are successful'
        notificationEnabled = '1'
        notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
        subproject = 'Petclinic'
        taskType = 'MANUAL'
        approver = [
          'SAUsers',
          'fgibelin',
        ]

        // Custom properties
        subservice = ''
      }

      task 'ServiceNow CR create for PreProduction', {
        actualParameter = [
          'config_name': '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com',
          'content': '{"description": "Deploy to PreProduction", "comments":"Please deploy the application to PreProduction"}',
          'correlation_display': 'ElectricFlow Pipeline Gate',
          'correlation_id': '',
          'property_sheet': '/myPipelineRuntime/ServiceNow/' + '$' + '[/myStage/name]',
          'short_description': 'Change for Deployment of application "Demo Application"',
        ]
        subpluginKey = 'EC-ServiceNow'
        subprocedure = 'CreateChangeRequest'
        taskType = 'PLUGIN'

        // Custom properties
        subservice = ''
      }
    }

    stage 'PreProduction', {
      colorCode = '#b1d728'
      pipelineName = 'spring-petclinic - Demo pipeline'
      gate 'PRE', {
        task 'WaitforCRApproval', {
          gateType = 'PRE'
          notificationEnabled = '1'
          notificationTemplate = 'ec_default_gate_task_notification_template'
          subproject = 'Petclinic'
          taskType = 'APPROVAL'
          approver = [
            'SAUsers',
            'ServiceNowChangeApprovers',
          ]

          // Custom properties
          subservice = ''
        }
      }

      gate 'POST', {
        }

      task 'Deploy', {
        deployerRunType = 'serial'
        subproject = 'Petclinic'
        taskType = 'DEPLOYER'

        // Custom properties
        subservice = ''
      }

      task 'Notifications', {
        subproject = 'Petclinic'
        taskType = 'GROUP'

        task 'Teams notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/Microsoft Teams',
            'message': 'Deployment successful on ' + '$' + '[/myStage/name]',
            'webhookUrl': 'https://cloudbees727.webhook.office.com/webhookb2/40fd35a3-af5b-44a5-8141-6497f32cf18e@7d42b7c8-0dc2-4512-81ce-de54c7e779b2/IncomingWebhook/e4945d37631141c6a2e01d43e88d6e6d/23cb29a1-e36c-47ca-a15b-f28ccbf66aa0',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Microsoft-Teams'
          subprocedure = 'Send Message'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        task 'Slack notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
            'payload': '{"text":"Deployment OK in $' + '[/myStage/name]"}',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Slack'
          subprocedure = 'Send Realtime Message'
          taskType = 'PLUGIN'
        }
      }

      task 'ServiceNow CR create for Production', {
        actualParameter = [
          'config_name': '/projects/Petclinic/pluginConfigurations/ServiceNow - ven01735.service-now.com',
          'content': '',
          'correlation_display': '',
          'correlation_id': '',
          'property_sheet': '/myPipelineRuntime/ServiceNow/' + '$' + '[/myStage/name]',
          'short_description': 'Change for Deployment of application "Demo Application"',
        ]
        subpluginKey = 'EC-ServiceNow'
        subprocedure = 'CreateChangeRequest'
        taskType = 'PLUGIN'

        // Custom properties
        subservice = ''
      }
    }

    stage 'Production', {
      colorCode = '#d728ba'
      pipelineName = 'spring-petclinic - Demo pipeline'
      gate 'PRE', {
        }

      gate 'POST', {
        }

      task 'Deploy', {
        deployerRunType = 'serial'
        subproject = 'Petclinic'
        taskType = 'DEPLOYER'

        // Custom properties
        subservice = ''
      }

      task 'Feature Flags', {
        actualParameter = [
          'applicationId': '615c016ca7889d30e27333ad',
          'config': '/projects/Petclinic/pluginConfigurations/CloudBees Feature Management',
          'envName': 'Production',
        ]
        stageSummaryParameters = '[{"name":"experiments","label":"experiments"}]'
        subpluginKey = 'EC-FeatureFlags'
        subprocedure = 'Get Experiments'
        taskType = 'PLUGIN'
      }

      task 'Notifications', {
        subproject = 'Petclinic'
        taskType = 'GROUP'

        task 'Teams notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/Microsoft Teams',
            'message': 'Deployment successful on ' + '$' + '[/myStage/name]',
            'webhookUrl': 'https://cloudbees727.webhook.office.com/webhookb2/40fd35a3-af5b-44a5-8141-6497f32cf18e@7d42b7c8-0dc2-4512-81ce-de54c7e779b2/IncomingWebhook/e4945d37631141c6a2e01d43e88d6e6d/23cb29a1-e36c-47ca-a15b-f28ccbf66aa0',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Microsoft-Teams'
          subprocedure = 'Send Message'
          taskType = 'PLUGIN'

          // Custom properties
          subservice = ''
        }

        task 'Slack notification', {
          actualParameter = [
            'config': '/projects/Petclinic/pluginConfigurations/team-sa-emea',
            'payload': '{"text":"Deployment OK in $' + '[/myStage/name]"}',
          ]
          groupName = 'Notifications'
          subpluginKey = 'EC-Slack'
          subprocedure = 'Send Realtime Message'
          taskType = 'PLUGIN'
        }
      }
    }

    property 'ec_customEditorData', {

      // Custom properties

      property 'parameters', {
        propertyType = 'sheet'
      }
    }
  }
}