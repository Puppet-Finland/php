#
# == Class: php::params
#
# Defines some variables based on the operating system
#
class php::params {

    case $::osfamily {
        'RedHat': {
            $php_package_name = 'php'
            $php_ldap_package_name = 'php-ldap'
            $php_mysql_package_name = 'php-mysql'
            $php_imap_package_name = 'php-imap'
            $php_gettext_package_name = 'php-php-gettext'
            $php_gd_package_name = 'php-gd'
            $php_pgsql_package_name = 'php-pgsql'
            $php_xcache_package_name = 'php-xcache'
        }
        'Debian': {
            $basename = $::lsbdistcodename ? {
                /(xenial)/ => 'php',
                default    => 'php5',
            }
            $php_package_name = $basename
            $php_ldap_package_name = "${basename}-ldap"
            $php_mysql_package_name = "${basename}-mysql"
            $php_imap_package_name = "${basename}-imap"
            $php_gettext_package_name = 'php-gettext'
            $php_gd_package_name = "${basename}-gd"
            $php_pgsql_package_name = "${basename}-pgsql"

            # Xcache seems to be missing from Ubuntu 16.04
            $php_xcache_package_name = "${basename}-xcache"
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
