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
class elk_puppet (
$download_dir            = $elk_puppet::params::download_dir,
$logstash_check_gpg      = $elk_puppet::params::logstash_check_gpg,
$logstash_is_enabled     = $elk_puppet::params::logstash_is_enabled,
$elastic_check_gpg       = $elk_puppet::params::elastic_check_gpg,
$elastic_is_enabled      = $elk_puppet::params::elastic_is_enabled,
$openjdk_java            = $elk_puppet::params::openjdk_java,

) inherits elk_puppet::params {

anchor {'elk_puppet::begin': } ->
  class {'::elk_puppet::elk_repo':} ->
  class {'::elk_puppet::wget':} ->
  class {'::elk_puppet::download':} ->
  class {'::elk_puppet::kibana':} ->
  class {'::elk_puppet::install':} ->
  class {'::elk_puppet::java':} ->
  class {'::elk_puppet::service':} ->
anchor {'elk_puppet::end':}
}
