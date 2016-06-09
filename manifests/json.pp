#
# == Class: php::json
#
class php::json inherits php::params {
    php::package { $::php::params::php_json_package_name: }
}
