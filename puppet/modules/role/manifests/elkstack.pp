class role::elkstack {
include profile::java
include profile::index
include profile::syslog
include profile::webinterface

Class['profile::java'] ->
Class['profile::index'] ->
Class['profile::syslog'] ->
Class['profile::webinterface']
}
