#
# == Class: php::xcache
#
# A convenience class to be used for requires and in node definitions
#
class php::xcache {
    include ::php
    include ::php::install::xcache
}
