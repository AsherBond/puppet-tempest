#
class tempest::params {
  case $::osfamily {
    'RedHat': {
      $dev_packages = [
        'python-devel',
        'libxslt-devel',
        'libxml2-devel',
        'openssl-devel',
        'libffi-devel',
        'patch',
        'gcc'
      ]
      $python_aodh_tests       = 'python-aodh-tests'
      $python_ceilometer_tests = 'python-ceilometer-tests'
      $python_cinder_tests     = 'python-cinder-tests'
      $python_designate_tests  = 'python-designate-tests-tempest'
      $python_glance_tests     = 'python-glance-tests'
      $python_gnocchi_tests    = 'python-gnocchi-tests'
      $python_heat_tests       = 'python-heat-tests'
      $python_ironic_tests     = 'python-ironic-tests'
      $python_keystone_tests   = 'python-keystone-tests'
      $python_mistral_tests    = 'python-mistral-tests'
      $python_murano_tests     = 'python-murano-tests'
      $python_neutron_tests    = 'python-neutron-tests'
      $python_fwaas_tests      = 'python-neutron-fwaas-tests'
      $python_lbaas_tests      = 'python-neutron-lbaas-tests'
      $python_vpnaas_tests     = 'python-neutron-vpnaas-tests'
      $python_nova_tests       = 'python-nova-tests'
      $python_sahara_tests     = 'python-sahara-tests'
      $python_swift_tests      = 'python-swift-tests'
      $python_trove_tests      = 'python-trove-tests'
      $python_zaqar_tests      = 'python-zaqar-tests'
    }
    'Debian': {
      $dev_packages = [
        'python-dev',
        'libxslt1-dev',
        'libxml2-dev',
        'libssl-dev',
        'libffi-dev',
        'patch',
        'gcc',
        'python-virtualenv',
      ]
      $python_aodh_tests       = false
      $python_ceilometer_tests = false
      $python_cinder_tests     = false
      $python_designate_tests  = false
      $python_glance_tests     = false
      $python_gnocchi_tests    = false
      $python_heat_tests       = false
      $python_ironic_tests     = false
      $python_keystone_tests   = false
      $python_mistral_tests    = false
      $python_murano_tests     = false
      $python_neutron_tests    = false
      $python_nova_tests       = false
      $python_sahara_tests     = false
      $python_swift_tests      = false
      $python_trove_tests      = false
      $python_zaqar_tests      = false
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only support osfamily RedHat and Debian")
    }
  }
}

