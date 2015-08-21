class elasticsearch::elasticsearch_gpgkey_import inherits elasticsearch {

  exec { 'Importing elasticsearch gpgkey':
    path     => '/usr/bin',
    command  => 'rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch',
    unless   => 'rpm -q gpg-pubkey |grep gpg-pubkey-d88e42b4-52371eca',
  }
}

