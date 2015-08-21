class logstash::logstash_install inherits logstash {

  package { "Install LogStash":
    ensure  => installed,
    name    => "logstash",
    require => Yumrepo["LogStash repo"],
  }
}
