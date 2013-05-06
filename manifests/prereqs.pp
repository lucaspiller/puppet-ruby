class ruby::prereqs {
  case $operatingsystem {
    ubuntu: {
      $packages = [ "build-essential", "libssl-dev", "libreadline5",
      "libreadline6-dev", "zlib1g", "zlib1g-dev", "curl", "git",
      "rake",]
      }

    centos: {
      $packages = [ "gcc", "make", "automake", "autoconf", "libcurl-devel", 
      "openssl-devel", "zlib-devel","curl", "git",] 
    }
    
    default: {
      fail("unsupported operating system, patches welcome")
    }

  }

  package { $packages:
    ensure => installed,
  }
}
