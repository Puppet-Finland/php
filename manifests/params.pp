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
        }
        'Debian': {
            $php_package_name = 'php5'
            $php_ldap_package_name = 'php5-ldap'
            $php_mysql_package_name = 'php5-mysql'
            $php_imap_package_name = 'php5-imap'
        }
        default: {
            $php_package_name = 'php5'
            $php_ldap_package_name = 'php5-ldap'
            $php_mysql_package_name = 'php5-mysql'
            $php_imap_package_name = 'php5-imap'
        }
    }
}
