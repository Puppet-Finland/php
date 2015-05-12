#
# == Class: php::install::pgsql
#
# Install php pgsql bindings
#
class php::install::pgsql {

    include ::php::params

    package { 'php-php5-pgsql':
        ensure  => installed,
        name    => $::php::params::php_pgsql_package_name,
        require => Class['php::install'],
    }
}
