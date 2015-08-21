# == Class: logstash
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
class logstash (
$logstash_check_gpg            = $logstash::params::logstash_check_gpg,
$logstash_is_enabled           = $logstash::params::logstash_is_enabled,
$logstash_baseurl              = $logstash::params::logstash_baseurl,
$logstash_gpgkey               = $logstash::params::logstash_gpgkey,
$use_logstash_repo             = $logstash::params::use_logstash_repo,

) inherits logstash::params {

  if $use_logstash_repo == 'true' {
    anchor {'logstash::begin': } ->
     class {'::logstash::logstash_repo':} ->
     class {'::logstash::logstash_install':} ->
     class {'::logstash::logstash_service':} ->
    anchor {'logstash::end':}
  }
  else {
     anchor {'logstash::begin': } ->
     class {'::logstash::logstash_install':} ->
     class {'::logstash::logstash_service':} ->
    anchor {'logstash::end':}
  }
}
