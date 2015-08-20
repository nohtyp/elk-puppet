class elk_puppet::elasticsearch_repo inherits elk_puppet {

  yumrepo { "ElasticSearch repo":
    ensure    => present,
    name      => "elasticsearch",
    baseurl   => "http://packages.elastic.co/elasticsearch/1.7/centos",
    gpgcheck  => $elastic_check_gpg,
    gpgkey    => "http://packages.elastic.co/GPG-KEY-elasticsearch",
    enabled   => $elastic_is_enabled, 
  }
}
