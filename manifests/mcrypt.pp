#
# == Class: php::mcrypt
#
class php::mcrypt inherits php::params {
    php::package { $::php::params::php_mcrypt_package_name: }
}
