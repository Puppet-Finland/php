#
# == Class: php::mcrypt
#
class php::mcrypt inherits php::params {

  # if php is newer or equal to 7.1, mcrypt is deprecated 
  $php_version = regsubst($::php::params::basename, 'php','')
  $max_version = '7.1'

  if ! $php_version or (versioncmp($php_version, $max_version) < 0) {
    php::package { $::php::params::php_mcrypt_package_name: }
  }
}
