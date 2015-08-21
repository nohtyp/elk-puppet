# == Class: elk_puppet
#
# Full description of class elk-puppet here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { elk-puppet:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class elasticsearch (
$elasticsearch_check_gpg       = $elasticsearch::params::elastic_check_gpg,
$elasticsearch_is_enabled      = $elasticsearch::params::elastic_is_enabled,
$elasticsearch_baseurl         = $elasticsearch::params::elasticsearch_baseurl,
$elasticsearch_gpgkey          = $elasticsearch::params::elasticsearch_gpg,

) inherits elasticsearch::params {

  anchor {'elasticsearch::begin': } ->
   class {'::elasticsearch::elasticsearch_repo':} ->
   class {'::elasticsearch::elasticsearch_install':} ->
   class {'::elasticsearch::elasticsearch_service':} ->
  anchor {'elasticsearch::end':}
  }
}
