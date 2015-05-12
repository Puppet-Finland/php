#
# == Class: php::install::xcache
#
# Install php xcache
#
class php::install::xcache {

    include ::php::params

    package { 'php-php5-xcache':
        ensure  => installed,
        name    => $::php::params::php_xcache_package_name,
        require => Class['php::install'],
    }
}
