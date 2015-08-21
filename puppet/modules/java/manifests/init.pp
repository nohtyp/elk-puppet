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
$install_dir                   = $elk_puppet::params::install_dir,
$root_dir                      = $elk_puppet::params::root_dir,
$logstash_check_gpg            = $elk_puppet::params::logstash_check_gpg,
$logstash_is_enabled           = $elk_puppet::params::logstash_is_enabled,
$elasticsearch_check_gpg       = $elk_puppet::params::elastic_check_gpg,
$elasticsearch_is_enabled      = $elk_puppet::params::elastic_is_enabled,
$openjdk_java                  = $elk_puppet::params::openjdk_java,
$use_logstash_only             = $elk_puppet::params::use_logstash_only,
$use_kibana_only               = $elk_puppet::params::use_kibana_only,
$use_elasticsearch_only        = $elk_puppet::params::use_elasticsearch_only,
$use_full_elk_stack            = $elk_puppet::params::use_full_elk_stack,
$elasticsearch_baseurl         = $elk_puppet::params::elasticsearch_baseurl,
$elasticsearch_gpgkey          = $elk_puppet::params::elasticsearch_gpg,
$kibana_pkg_name               = $elk_puppet::params::kibana_pkg_name,
$kibana_tar_url                = $elk_puppet::params::kibana_tar_url,
$logstash_baseurl              = $elk_puppet::params::logstash_baseurl,
$logstash_gpgkey               = $elk_puppet::params::logstash_gpgkey,

) inherits elk_puppet::params {

  anchor {'elk_puppet::begin': } ->
   class {'::elk_puppet::logstash_repo':} ->
   class {'::elk_puppet::logstash_install':} ->
   class {'::elk_puppet::java':} ->
   class {'::elk_puppet::logstash_service':} ->
  anchor {'elk_puppet::end':}
  }
}
