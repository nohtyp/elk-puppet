class openjava::java_install inherits openjava {

  package { "Installing OpenJDK":
    ensure  => installed,
    name    => $openjdk_java,
  }
}
