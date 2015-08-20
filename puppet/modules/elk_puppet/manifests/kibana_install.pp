class elk_puppet::kibana_install inherits elk_puppet {

  exec { "Kibana install directory":
    path    => "/usr/bin",
    cwd     => $download_dir,
    unless  => "test `ls -d $download_dir/kibana-4.0.3-linux-x64`",
    command => "tar -xf kibana-4.0.3-linux-x64.tar.gz",
    require => [ Exec["Kibana download"],
    ]
  }
}
