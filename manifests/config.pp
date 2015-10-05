##
#
# Adds an extra configuration override file generated from php::config parameter
#
##

class php::config {
    $config_overrides = $::php::config

    if $operatingsystem == 'Ubuntu' and $lsbdistcodename == 'trusty' {
        file {"php-config-override-file":
            ensure  => file,
            path    => "/etc/php5/mods-available/puppet-config-overrides.ini",
            content => template('php/config-overrides.ini.erb'),
            owner   => root,
            group   => root,
            mode    => '0644',
            require => Class['php::install'],
        }
        ->
        file {"php-apache-config-override-link":
            ensure => link,
            path => '/etc/php5/apache2/conf.d/90-puppet-config-overrides.ini',
            target => '../../mods-available/puppet-config-overrides.ini',
        } 
        <- Package <| title == 'libapache2-mod-php5' |>
    }
}
