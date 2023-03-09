
task 'Teams notification', {
  actualParameter = [
    'config': '/projects/Petclinic/pluginConfigurations/Microsoft Teams',
    'message': 'Deployment successful on environment $[/myStage/name]',
    'webhookUrl': 'https://cloudbees727.webhook.office.com/webhookb2/40fd35a3-af5b-44a5-8141-6497f32cf18e@7d42b7c8-0dc2-4512-81ce-de54c7e779b2/IncomingWebhook/e4945d37631141c6a2e01d43e88d6e6d/23cb29a1-e36c-47ca-a15b-f28ccbf66aa0',
  ]
  groupName = 'Notifications'
  projectName = 'Petclinic'
  subpluginKey = 'EC-Microsoft-Teams'
  subprocedure = 'Send Message'
  taskType = 'PLUGIN'
}
