#
# == Class: php::net_ipv6
#
class php::net_ipv6 inherits php::params {
    php::package { $::php::params::php_net_ipv6_package_name: }
}
