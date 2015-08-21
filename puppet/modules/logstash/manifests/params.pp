class logstash::params {

$logstash_check_gpg          = True
$logstash_is_enabled         = True
$logstash_baseurl            = "http://packages.elasticsearch.org/logstash/1.5/centos"
$logstash_gpgkey             = "http://packages.elasticsearch.org/GPG-KEY-elasticsearch"
$use_logstash_repo           = 'true'
}
