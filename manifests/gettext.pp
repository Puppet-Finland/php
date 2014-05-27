#
# == Class: php::gettext
#
# A convenience class to be used for requires and in node definitions
#
class php::gettext {
    include php
    include php::install::gettext
}
