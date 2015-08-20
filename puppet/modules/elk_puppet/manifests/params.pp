class elk_puppet::params {

$download_dir                = '/opt'
$logstash_check_gpg          = True
$logstash_is_enabled         = True
$elasticsearch_check_gpg     = True
$elasticsearch_is_enabled    = True
$openjdk_java                = 'java-1.8.0-openjdk.x86_64'
$use_full_elk_stack          = 'true'
$elasticsearch_baseurl       = "http://packages.elastic.co/elasticsearch/1.7/centos"
$elasticsearch_gpgkey        = "http://packages.elastic.co/GPG-KEY-elasticsearch"
$kibana_pkg_name             = "kibana-4.0.3-linux-x64.tar.gz"
$kibana_tar_url              = "https://download.elastic.co/kibana/kibana/$kibana_pkg_name"
$logstash_baseurl            = "http://packages.elasticsearch.org/logstash/1.5/centos"
$logstash_gpgkey             = "http://packages.elasticsearch.org/GPG-KEY-elasticsearch"
}
