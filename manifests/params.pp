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
            # FIXME: several package names missing!
        }
        'Debian': {
            case $::lsbdistcodename {
                /(xenial)/: {
                    $basename = 'php'
                    $confdir = '/etc/php/7.0'
                    $phpenmod_command = "${basename}enmod"
                    $phpdismod_command = "${basename}dismod"

                }
                /(bionic)/: {
                    $basename = 'php7.2'
                    $confdir = '/etc/php/7.2'
                    $phpenmod_command = 'phpenmod'
                    $phpdismod_command = 'phpdismod'
                }
                default: {
                    $basename = 'php5'
                    $confdir = '/etc/php5'
                    $phpenmod_command = "${basename}enmod"
                    $phpdismod_command = "${basename}dismod"
                }
            }
            $mods_available = "${confdir}/mods-available"

            $php_package_name = $basename
            $php_ldap_package_name = "${basename}-ldap"
            $php_mysql_package_name = "${basename}-mysql"
            $php_imap_package_name = "${basename}-imap"
            $php_gettext_package_name = 'php-gettext'
            $php_gd_package_name = "${basename}-gd"
            $php_pgsql_package_name = "${basename}-pgsql"
            $php_cli_package_name = "${basename}-cli"
            $php_pear_package_name = 'php-pear'
            $php_curl_package_name = "${basename}-curl"
            $php_snmp_package_name = "${basename}-snmp"
            $php_mcrypt_package_name = "${basename}-mcrypt"
            $php_json_package_name = "${basename}-json"
            $php_net_ipv4_package_name = 'php-net-ipv4'
            $php_net_ipv6_package_name = 'php-net-ipv6'

            # Xcache seems to be missing from Ubuntu 16.04
            $php_xcache_package_name = "${basename}-xcache"
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
