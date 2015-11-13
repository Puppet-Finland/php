#
# == Class: php
#
# Install (and configure) php
#
# == Parameters
#
# [*manage*]
#   Manage php using Puppet. Valid values are true (default) and false.
# [*config_overrides*]
#   Configuration parameters to override. A hash of 'param_name' => 'value' 
#   pairs. Default value is undef. Note that this mechanism is limited to Ubuntu 
#   Trusty.
#
# == Examples
#
#   include ::php
#
# == Authors
#
# Mikko Vilpponen <vilpponen@protecomp.fi>
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
    $config_overrides = undef
)
{
    validate_bool($manage)

    if $manage {
        include ::php::install
        class { '::php::config':
            config_overrides => $config_overrides,
        }
    }
}
