#
# == Class: php::imap
#
# A convenience class to be used for requires and in node definitions
#
class php::imap {
    include ::php
    include ::php::install::imap
}
