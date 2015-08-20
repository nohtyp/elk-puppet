class elk_puppet::elasticsearch_install inherits elk_puppet {

  package { "Install ElasticSearch" :
    ensure  => installed,
    name    => "elasticsearch",
    require => Yumrepo["ElasticSearch repo"],
  }
}
