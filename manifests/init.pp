#
# == Class: php
#
# Install (and configure) php
#
# == Parameters
#
# [*manage*]
#   Manage php using Puppet. Valid values are true (default) and false.
# [*manage_config*]
#   Manage php configuration. Valid values are true (default) and false.
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
    Boolean        $manage = true,
    Boolean        $manage_config = true,
    Optional[Hash] $config_overrides = undef
)
{
    if $manage {
        include ::php::install

        if $manage_config {
            class { '::php::config':
                config_overrides => $config_overrides,
            }
        }
    }
}
