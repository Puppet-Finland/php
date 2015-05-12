# php

A general-purpose php module for Puppet

# Module usage

* [Class: php](manifests/init.pp)
* [Class: php::gd](manifests/gd.pp)
* [Class: php::gettext](manifests/gettext.pp)
* [Class: php::imap](manifests/imap.pp)
* [Class: php::ldap](manifests/ldap.pp)
* [Class: php::mysql](manifests/mysql.pp)
* [Class: php::pgsql](manifests/pgsql.pp)
* [Class: php::xcache](manifests/xcache.pp)

# Dependencies

See [metadata.json](metadata.json).

# Operating system support

This module has been tested on

* Ubuntu 12.04 and 14.04
* Debian 7

Any *NIX-style operating system should work out of the box or with small 
modifications.

For details see [params.pp](manifests/params.pp).
