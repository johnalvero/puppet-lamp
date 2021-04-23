class lamp::lamp-classes::php74 {

$common_php74_modules = ["php74-php-opcache"]

  #package { 'package_yum-utils':
  #  name => "yum-utils",
  #  ensure => present,
  #  allow_virtual 	=> false
  #}

  #exec {'exec_enable-php74-repo':
  #  command => '/usr/bin/yum-config-manager --enable remi-php74',
  #  require => Package['package_yum-utils']
  #}

  package {'package_php74':
    install_options => ['--enablerepo', 'remi-php74'],
    name => 'php74-php',
    allow_virtual 	=> false
  }

  package {'package_php74-modules-common':
    install_options => ['--enablerepo', 'remi-php74'],
    name => $common_php74_modules,
    allow_virtual 	=> false,
    require => Package['package_php74']
  }



}
