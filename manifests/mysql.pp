#
# == Class: php::mysql
#
# A convenience class to be used for requires and in node definitions
#
class php::mysql {
    include php
    include php::install::mysql
}
