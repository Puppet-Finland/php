#
# == Class: php
#
# Install (and configure) php
#
# == Parameters
#
# None at the moment
#
# == Examples
#
#   include php
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-lisence
# See file LICENSE for details
# 
class php {

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_php', 'true') != 'false' {

    include php::install
}
}
