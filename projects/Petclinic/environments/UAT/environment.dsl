
environment 'UAT', {
  description = 'UAT environment for application Petclinic'
  projectName = 'Petclinic'
  reservationRequired = '0'

  environmentTier 'JBoss', {
    resourceName = [
      'petclinic-uat-jboss',
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

          property 'version', value: ''
        }

        property 'Database Server', {

          // Custom properties
          product = ''
          vendor = ''

          property 'version', value: ''
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

          property 'version', value: ''
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
      'petclinic-uat-local',
    ]
  }

  environmentTier 'MySQL', {
    resourceName = [
      'petclinic-uat-mysql',
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

          property 'version', value: ''
        }

        property 'Database Server', {

          // Custom properties
          product = 'MySQL'
          vendor = ''

          property 'version', value: ''
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

          property 'version', value: ''
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
      'petclinic-uat-tomcat',
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

          property 'version', value: ''
        }

        property 'Database Server', {

          // Custom properties
          product = ''
          vendor = ''

          property 'version', value: ''
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

          property 'version', value: ''
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

  utilityResource 'Utility Resource 1', {
    resourceName = 'petclinic-uat-local'
  }
}
