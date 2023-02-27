
environment 'Feature Management', {
  description = 'Petclinic Angular environment hosting Feature Management demo application'
  environmentEnabled = '1'
  projectName = 'Petclinic'
  reservationRequired = '0'

  environmentTier 'Tier 1', {
    resourceName = [
      'petclinic.c.cloudbees-sa-emea-demo.internal',
    ]
  }

  tag 'petclinic'
}
