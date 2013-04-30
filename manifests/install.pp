#
# == Class: php::install
#
# Install php
#
class php::install {

    include php::params

    package { 'php-php5':
        name => $php::params::php_package_name,
        ensure => installed,
    }        
}
