# puppet-lamp

### Puppet LAMP Module 

#### Installing
1. Download puppet and git
```
# Centos 7
yum install -y epel-release
yum install -y git puppet --enablerepo=epel

# Centos 6
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum install -y git puppet --enablerepo=puppetlabs-products
```
2. Download and install the module
```
git clone https://github.com/smic-itss/puppet-lamp.git /etc/puppet/modules/lamp
```
3. Apply
```
puppet apply -e "Package { allow_virtual => false} include lamp::main" 
```
