#
# == Class: php::curl
#
class php::curl inherits php::params {
    php::package { $::php::params::php_curl_package_name: }
}
