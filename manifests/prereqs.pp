class ruby::prereqs {
  case $operatingsystem {
    ubuntu: {
      $packages = [ "build-essential", "libssl-dev", "libreadline5",
      "libreadline6-dev", "zlib1g", "zlib1g-dev", "curl", "git",
      "rake",]
      }

    centos: {
      $packages = [ "gcc", "g++", "make", "automake", "autoconf", "curl-devel", 
      "openssl-devel", "zlib-devel", "httpd-devel", "apr-devel", "apr-util-devel", "sqlite-devel",]
    }
    
    default: {
      fail("unsupported operating system, patches welcome")
    }

  }
}
