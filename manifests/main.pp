## Configuration

# This variable is in apache.pp
$http_domains = "smfii.com"	


## Templates


class lamp::main {
  include lamp::lamp-classes::epel
  include lamp::lamp-classes::remi
  include lamp::lamp-classes::apache
  include lamp::lamp-classes::php74
  include lamp::lamp-classes::moodle-php74
   
}





# ln -s /root/smfi /etc/puppet/modules
# puppet apply -e "include lamp::main"
