class elk_puppet::download inherits elk_puppet {

  exec { "Kibana download":
    path      => "/usr/bin",
    cwd       => $download_dir,
    command   => "wget https://download.elastic.co/kibana/kibana/kibana-4.0.3-linux-x64.tar.gz",
    unless    => "test `ls -1 $download_dir/kibana-4.0.3-linux-x64.tar.gz`",
    require   => [ Package["Installing wget"],
    ]
  }
}
