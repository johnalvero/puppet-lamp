class lamp::lamp-classes::moodle-php74 {

#$moodle_php_modules = "php74-php-mysqlnd php74-php-mbstring php74-php-soap php74-php-gd php74-php-xml php74-php-intl"

$moodle_php_modules = ["php74-php-mysqlnd", "php74-php-mbstring", "php74-php-soap", "php74-php-gd", "php74-php-xml", "php74-php-intl"]

  package {$moodle_php_modules:
    install_options => ['--enablerepo', 'remi-php74'],
  #  name => $moodle_php_modules,
    allow_virtual 	=> false,
    require => Package['package_php74']
  }

}
