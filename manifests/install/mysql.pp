#
# == Class: php::install::mysql
#
# Install php mysql bindings
#
class php::install::mysql {

    include php::params

    package { 'php-php5-mysql':
        name => $php::params::php_mysql_package_name,
        ensure => installed,
        require => Class['php::install'],
    }        
}
