#
# == Class: php::config
#
# Adds an extra configuration override file generated from php::config parameter
#
class php::config
(
    $config_overrides
)
{
    if is_hash($config_overrides) {

        validate_hash($config_overrides)

        # This should be made more generic by moving the paths to params.pp and 
        # getting rid of the operating system and codename checks.
        if $::operatingsystem == 'Ubuntu' and $::lsbdistcodename == 'trusty' {
            file { 'php-config-override-file':
                ensure  => file,
                path    => "${::php::params::mods_available}/puppet-config-overrides.ini",
                content => template('php/config-overrides.ini.erb'),
                owner   => root,
                group   => root,
                mode    => '0644',
                require => Class['php::install'],
            }
        }
    }
}
