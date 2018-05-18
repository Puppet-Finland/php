# php

A general-purpose php module for Puppet. The design philosophy is the same as in [puppetfinland/python](https://github.com/Puppet-Finland/puppetfinland-python).

# Module usage

To install php:

    include ::php

To install various php modules:

    include ::php::gd
    include ::php::gettext
    include ::php::imap
    include ::php::ldap
    include ::php::mysql
    include ::php::pgsql
    include ::php::xcache

