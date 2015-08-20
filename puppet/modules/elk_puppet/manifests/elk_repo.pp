class elk_puppet::elk_repo inherits elk_puppet {

  yumrepo { "LogStash repo":
    ensure    => present,
    name      => "logstash",
    baseurl   => "http://packages.elasticsearch.org/logstash/1.5/centos",
    gpgcheck  => $logstash_check_gpg,
    gpgkey    => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
    enabled   => $logstash_is_enabled,
  }

  yumrepo { "ElasticSearch repo":
    ensure    => present,
    name      => "elasticsearch",
    baseurl   => "http://packages.elastic.co/elasticsearch/1.7/centos",
    gpgcheck  => $elastic_check_gpg,
    gpgkey    => "http://packages.elastic.co/GPG-KEY-elasticsearch",
    enabled   => $elastic_is_enabled, 
  }
}
