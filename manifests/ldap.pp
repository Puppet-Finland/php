#
# == Class: php::ldap
#
# A convenience class to be used for requires and in node definitions
#
class php::ldap {
    include ::php
    include ::php::install::ldap
}
