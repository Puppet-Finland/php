#
# == Class: php
#
# Install (and configure) php
#
# == Parameters
#
# [*manage*]
#   Manage php using Puppet. Valid values are true (default) and false.
# [*config*]
#   Configuration parameters to override. A hash of 'param_name' => 'value' pairs.
#
# == Examples
#
#   include ::php
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license
#
# See file LICENSE for details
# 
class php
(
    $manage = true,
    $config = {}
)
{
    validate_bool($manage)

    if $manage {
        include ::php::install
        class { '::php::config':
            config => $config,
        }
    }
}
