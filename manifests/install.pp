#
# == Class: php::install
#
# Install php
#
class php::install {

    include ::php::params

    package { 'php-php':
        ensure => installed,
        name   => $::php::params::php_package_name,
    }
}
