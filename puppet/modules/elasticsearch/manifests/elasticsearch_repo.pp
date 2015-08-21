class elasticsearch::elasticsearch_repo inherits elasticsearch {

  yumrepo { "ElasticSearch repo":
    ensure    => present,
    name      => "elasticsearch",
    baseurl   => $elasticsearch_baseurl,
    gpgcheck  => $elasticsearch_check_gpg,
    gpgkey    => $elasticsearch_gpgkey,
    enabled   => $elasticsearch_is_enabled, 
  }
}
