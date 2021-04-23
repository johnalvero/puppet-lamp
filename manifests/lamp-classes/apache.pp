class lamp::lamp-classes::apache {
  
  # Need to fix this
  $http_domains = "smfi.com"	

  package { 'package_httpd':
		name		=> "httpd",
		ensure		=> present,
		allow_virtual 	=> false
	}

  file { '/var/www/default':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    require => Package['package_httpd']
  }

  service { 'service_httpd':
		ensure 		=> running,
		name 		=> httpd,
		enable 		=> true,
		subscribe 	=> [File['file_config_httpd-startup'], File['file_config_httpd']]
	}

  # Apache startup file tuning max open files
  file { 'file_config_httpd-startup':
    path => "/lib/systemd/system/httpd.service",
    ensure => present,
    source => 'puppet:///modules/lamp/httpd.service',
    require => Package['package_httpd']
  }

  exec { 'exec_reload-httpd-service':
		command 	=> '/usr/bin/systemctl daemon-reload',
		require 	=> [File['file_config_httpd-startup'], Package['package_httpd']]
	}

  # Main configuration
  file { 'file_config_httpd':
    path => "/etc/httpd/conf/httpd.conf",
    ensure => present,
    #source => 'puppet:///modules/lamp/httpd.conf',
    content => template('lamp/httpd.erb'),
    require => Package['package_httpd']
  }


}
