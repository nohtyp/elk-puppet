class elk_puppet::logstash_repo inherits elk_puppet {

  yumrepo { "LogStash repo":
    ensure    => present,
    name      => "logstash",
    baseurl   => $logstash_baseurl,
    gpgcheck  => $logstash_check_gpg,
    gpgkey    => $logstash_gpgkey,
    enabled   => $logstash_is_enabled,
  }
}
