#
# == Class: php::mcrypt
#
class php::mbstring inherits php::params {

  php::package { $::php::params::php_mbstring_package_name: }
}

