#
# == Define: php::package
#
# Install a php package, usually a library
#
# == Parameters
#
# [*ensure*]
#   Status of the package. Valid values 'present', 'absent' and 'latest'.
#   Defaults to 'present'.
# [*title*]
#   The resource $title is used as the package name. It is typically derived
#   from the variables in $::php::params.
#
define php::package
(
    Enum['present', 'absent', 'latest'] $ensure = 'present'
)
{
    include ::php

    # We use this function to minimize the risk of duplicate resource
    # definitions when using "external" puppet modules
    ensure_resource('package', "php-${title}", {'ensure'  => $ensure,
                                                'name'    => $title,
                                                'require' => Class['php::install'] })
}
