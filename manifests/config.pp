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
        if $::operatingsystem == 'Ubuntu' {
            file { 'php-puppet-config-overrides.ini':
                ensure  => file,
                path    => "${::php::params::mods_available}/puppet-config-overrides.ini",
                content => template('php/config-overrides.ini.erb'),
                owner   => $::os::params::adminuser,
                group   => $::os::params::admingroup,
                mode    => '0644',
                require => Class['php::install'],
            }

            # Enable the overrides, with what is possibly a misuse of phpenmod
            php::module { 'puppet-config-overrides':
                ensure  => 'enabled',
                require => File['php-puppet-config-overrides.ini'],
            }
        }
    }
}
