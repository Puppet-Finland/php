#
# == Class: php::pear
#
class php::pear inherits php::params {
    php::package { $::php::params::php_pear_package_name: }
}
