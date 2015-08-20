class elk_puppet::wget inherits elk_puppet {

  package { "Installing wget":
    ensure  => installed,
    name    => 'wget',
  }
}
