#
# == Class: php::cli
#
class php::cli inherits php::params {
    php::package { $::php::params::php_cli_package_name: }
}
