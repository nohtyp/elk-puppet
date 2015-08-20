class elk_puppet::logstash_repo inherits elk_puppet {

  yumrepo { "LogStash repo":
    ensure    => present,
    name      => "logstash",
    baseurl   => "http://packages.elasticsearch.org/logstash/1.5/centos",
    gpgcheck  => $logstash_check_gpg,
    gpgkey    => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
    enabled   => $logstash_is_enabled,
  }
}
