class elk_puppet::install inherits elk_puppet {

  package { "Install LogStash" :
    ensure  => present,
    name    => "logstash",
  }
}
