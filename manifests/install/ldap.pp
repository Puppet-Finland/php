#
# == Class: php::install::ldap
#
# Install php ldap bindings
#
class php::install::ldap {

    include php::params

    package { 'php-php5-ldap':
        name => $php::params::php_ldap_package_name,
        ensure => installed,
        require => Class['php::install'],
    }        
}
