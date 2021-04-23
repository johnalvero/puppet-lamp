class lamp::lamp-classes::epel {

  package { 'package_epel':
   	name    	=> "epel-release",
		ensure  	=> present,
		allow_virtual 	=> false
  }

}
