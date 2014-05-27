#
# == Class: php::install::pgsql
#
# Install php pgsql bindings
#
class php::install::pgsql {

    include php::params

    package { 'php-php5-pgsql':
        name => "${::php::params::php_pgsql_package_name}",
        ensure => installed,
        require => Class['php::install'],
    }        
}
