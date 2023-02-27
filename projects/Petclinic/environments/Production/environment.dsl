
environment 'Production', {
  description = 'Production environment for application Petclinic'
  environmentEnabled = '1'
  projectName = 'Petclinic'
  reservationRequired = '0'
  rollingDeployEnabled = '0'
  rollingDeployType = 'phase'

  environmentTier 'JBoss', {
    resourceName = [
      'petclinic-production-jboss',
    ]

    // Custom properties

    property 'ec_deploy', {

      // Custom properties

      property 'capabilities', {

        // Custom properties

        property 'Application Server', {

          // Custom properties
          product = 'JBoss Enterprise Application Platform'
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Database Server', {

          // Custom properties
          product = ''
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Host', {

          // Custom properties
          architecture = ''
          cpu = ''
          disk_size = ''
          memory_size = ''
          num_cpus = ''
          private_ip = ''
          public_ip = ''
        }

        property 'Operating Systems', {

          // Custom properties
          os = ''
          os_type = ''
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Virtual Image', {

          // Custom properties
          cpu = ''
          image = ''
          memory_size = ''
          private_ip = ''
          private_subnet = ''
          public_ip = ''
        }
      }
    }
  }

  environmentTier 'Local', {
    resourceName = [
      'petclinic-production-local',
    ]
  }

  environmentTier 'MySQL', {
    resourceName = [
      'petclinic-production-mysql',
    ]

    // Custom properties

    property 'ec_deploy', {

      // Custom properties

      property 'capabilities', {

        // Custom properties

        property 'Application Server', {

          // Custom properties
          product = ''
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Database Server', {

          // Custom properties
          product = 'MySQL'
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Host', {

          // Custom properties
          architecture = ''
          cpu = ''
          disk_size = ''
          memory_size = ''
          num_cpus = ''
          private_ip = ''
          public_ip = ''
        }

        property 'Operating Systems', {

          // Custom properties
          os = ''
          os_type = ''
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Virtual Image', {

          // Custom properties
          cpu = ''
          image = ''
          memory_size = ''
          private_ip = ''
          private_subnet = ''
          public_ip = ''
        }
      }
    }
  }

  environmentTier 'Tomcat', {
    resourceName = [
      'petclinic-production-tomcat',
    ]

    // Custom properties

    property 'ec_deploy', {

      // Custom properties

      property 'capabilities', {

        // Custom properties

        property 'Application Server', {

          // Custom properties
          product = 'Tomcat'
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Database Server', {

          // Custom properties
          product = ''
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Host', {

          // Custom properties
          architecture = ''
          cpu = ''
          disk_size = ''
          memory_size = ''
          num_cpus = ''
          private_ip = ''
          public_ip = ''
        }

        property 'Operating Systems', {

          // Custom properties
          os = ''
          os_type = ''
          vendor = ''

          property 'version', value: '', {
            expandable = '1'
            suppressValueTracking = '0'
          }
        }

        property 'Virtual Image', {

          // Custom properties
          cpu = ''
          image = ''
          memory_size = ''
          private_ip = ''
          private_subnet = ''
          public_ip = ''
        }
      }
    }
  }

  tag 'petclinic'

  tag 'prod', {
    description = ''
  }

  utilityResource 'Utility Resource 1', {
    resourceName = 'petclinic-production-local'
  }
}
