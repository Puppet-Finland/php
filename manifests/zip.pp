#
# == Class: php::mcrypt
#
class php::zip inherits php::params {

  php::package { $::php::params::php_zip_package_name: }
}

