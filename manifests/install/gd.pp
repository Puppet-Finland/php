#
# == Class: php::install::gd
#
# Install php-gd
#
class php::install::gd {

    include php::params

    package { 'php-php5-gd':
        name => "${::php::params::php_gd_package_name}",
        ensure => installed,
        require => Class['php::install'],
    }        
}
