class elk_puppet::logstash_install inherits elk_puppet {

  package { "Install LogStash":
    ensure  => installed,
    name    => "logstash",
    require => Yumrepo["LogStash repo"],
  }
}
