#
# == Class: php::pgsql
#
# A convenience class to be used for requires and in node definitions
#
class php::pgsql {
    include ::php
    include ::php::install::pgsql
}
