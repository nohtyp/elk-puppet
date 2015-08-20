class elk_puppet::kibana_download inherits elk_puppet {

  exec { "Kibana download":
    path      => "/usr/bin",
    cwd       => $download_dir,
    #command   => "wget https://download.elastic.co/kibana/kibana/kibana-4.0.3-linux-x64.tar.gz",
    command   => "wget $kibana_tar_url",
    #unless    => "test `ls -1 $download_dir/kibana-4.0.3-linux-x64.tar.gz`",
    unless    => "test `ls -1 $download_dir/$kibana_pkg_name`",
    require   => [ Package["Installing wget"],
    ]
  }
}
