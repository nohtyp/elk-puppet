class elk_puppet::logstash_install inherits elk_puppet {

  package { "Install LogStash":
    ensure  => present,
    name    => "logstash",
    require => Yumrepo["LogStash repo"],
  }
}
