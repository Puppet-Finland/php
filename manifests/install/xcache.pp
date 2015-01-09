#
# == Class: php::install::xcache
#
# Install php xcache
#
class php::install::xcache {

    include php::params

    package { 'php-php5-xcache':
        name => $::php::params::php_xcache_package_name,
        ensure => installed,
        require => Class['php::install'],
    }        
}
