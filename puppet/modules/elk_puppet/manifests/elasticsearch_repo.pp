class elk_puppet::elasticsearch_repo inherits elk_puppet {

  yumrepo { "ElasticSearch repo":
    ensure    => present,
    name      => "elasticsearch",
    baseurl   => $elasticsearch_baseurl,
    gpgcheck  => $elasticsearch_check_gpg,
    gpgkey    => $elasticsearch_gpgkey,
    enabled   => $elasticsearch_is_enabled, 
  }
}
