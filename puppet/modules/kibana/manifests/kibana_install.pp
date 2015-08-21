class kibana::kibana_install inherits kibana {

  exec { "Kibana install directory":
    path    => "/usr/bin",
    cwd     => $root_dir,
    command => "tar -C $install_dir -xf $root_dir/kibana-4.0.3-linux-x64.tar.gz",
    unless  => "test `ls -d $install_dir/kibana-4.0.3-linux-x64`",
    require => [ Exec["Kibana download"],
    ]
  }
}
