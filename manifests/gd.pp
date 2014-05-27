#
# == Class: php::gd
#
# A convenience class to be used for requires and in node definitions
#
class php::gd {
    include php
    include php::install::gd
}
