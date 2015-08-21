class kibana::kibana_download inherits kibana {

  exec { "Kibana download":
    path      => "/usr/bin",
    cwd       => $root_dir,
    command   => "wget $kibana_tar_url",
    unless    => "test `ls -1 $root_dir/$kibana_pkg_name`",
    require   => [ Package["Installing wget"],
    ]
  }
}
