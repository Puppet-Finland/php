#
# == Class: php::install::gettext
#
# Install php gettext bindings
#
class php::install::gettext {

    include ::php::params

    package { 'php-php-gettext':
        ensure  => installed,
        name    => $::php::params::php_gettext_package_name,
        require => Class['php::install'],
    }
}
