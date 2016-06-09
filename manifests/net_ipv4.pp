#
# == Class: php::net_ipv4
#
class php::net_ipv4 inherits php::params {
    php::package { $::php::params::php_net_ipv4_package_name: }
}
