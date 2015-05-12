#
# == Class: php
#
# Install (and configure) php
#
# == Parameters
#
# [*manage*]
#   Manage php using Puppet. Valid values are 'yes' (default) and 'no'.
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
class php
(
    $manage = 'yes'
)
{

if $manage {
    include ::php::install
}
}
