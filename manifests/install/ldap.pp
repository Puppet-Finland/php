#
# == Class: php::install::ldap
#
# Install php ldap bindings
#
class php::install::ldap {

    include ::php::params

    package { 'php-php5-ldap':
        ensure  => installed,
        name    => $::php::params::php_ldap_package_name,
        require => Class['php::install'],
    }
}
