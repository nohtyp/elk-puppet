class elk_puppet::java inherits elk_puppet {

  package { "Installing OpenJDK":
    ensure  => installed,
    name    => $openjdk_java,
  }
}
