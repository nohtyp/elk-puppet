class role::logstash {
include profile::java
include profile::syslog

Class['profile::java'] ->
Class['profile::syslog']
}
