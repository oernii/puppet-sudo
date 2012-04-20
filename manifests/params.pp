class sudo::params {
  case $::operatingsystem {
    ubuntu, debian, redhat, mandriva, centos, fedora: {
      $package = 'sudo'
      $config_file = '/etc/sudoers'
      $config_dir = '/etc/sudoers.d/'
      $source = 'puppet:///sudo/sudoers'
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
