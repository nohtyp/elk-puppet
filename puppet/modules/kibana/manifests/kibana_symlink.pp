class kibana::kibana_symlink inherits kibana {

  file { "Creating kibana symbolic link":
    ensure  => link,
    path    => "/opt/kibana",
    target  => "/opt/kibana-4.0.3-linux-x64",
    require => Exec["Kibana download"],
  }
}

