#
# == Class: php::install::imap
#
# Install php imap bindings
#
class php::install::imap {

    include ::php::params

    package { 'php-php5-imap':
        ensure  => installed,
        name    => $::php::params::php_imap_package_name,
        require => Class['php::install'],
    }
}
