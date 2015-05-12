#
# == Class: php::install::mysql
#
# Install php mysql bindings
#
class php::install::mysql {

    include ::php::params

    package { 'php-php5-mysql':
        ensure  => installed,
        name    => $::php::params::php_mysql_package_name,
        require => Class['php::install'],
    }
}
