#
# == Class: php::snmp
#
class php::snmp inherits php::params {
    php::package { $::php::params::php_snmp_package_name: }
}
