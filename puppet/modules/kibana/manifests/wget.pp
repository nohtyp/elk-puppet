class kibana::wget inherits kibana {

  package { "Installing wget":
    ensure  => installed,
    name    => 'wget',
  }
}
