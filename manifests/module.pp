#
# == Define: php::module
#
# Manage the state of a php module. This currently only works on Debian-based 
# operating systems.
#
# == Parameters
#
# [*title*]
#   The resource title is used as the module name.
# [*ensure*]
#   The status of the module. Right now this can only be 'enabled' (default).
#
define php::module
(
    Enum['enabled'] $ensure = 'enabled'
)
{
    include ::php::params

    if $::osfamily == 'Debian' {
        exec { "php-module-${title}-${ensure}":
            path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', '/usr/local/bin', '/usr/local/sbin' ],
            command => "${::php::params::phpenmod_command} ${title}",
            unless  => "find ${::php::params::confdir} -type l -name \'*${title}.ini\' | grep ini",
            require => Class['::php'],

        }
    } else {
        notify { "WARNING: not managing php::module titled \"${title}\" because the OS is not supported yet!": }
    }
}
