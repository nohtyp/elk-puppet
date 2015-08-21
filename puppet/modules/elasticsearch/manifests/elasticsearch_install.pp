class elasticsearch::elasticsearch_install inherits elasticsearch {

  package { "Install ElasticSearch" :
    ensure  => installed,
    name    => "elasticsearch",
    require => Yumrepo["ElasticSearch repo"],
  }
}
