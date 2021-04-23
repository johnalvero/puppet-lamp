class lamp::lamp-classes::remi {


  exec { 'exec_remi':
		command 	=> '/usr/bin/yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm',
		creates  	=> '/etc/yum.repos.d/remi.repo',
		require 	=> Package['package_epel'],
	}
}
