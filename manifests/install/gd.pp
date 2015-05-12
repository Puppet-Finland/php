#
# == Class: php::install::gd
#
# Install php-gd
#
class php::install::gd {

    include ::php::params

    package { 'php-php5-gd':
        ensure  => installed,
        name    => $::php::params::php_gd_package_name,
        require => Class['php::install'],
    }
}
