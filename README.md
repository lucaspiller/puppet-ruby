Puppet Ruby Module
==================

Module to install Ruby from source. Allows newer versions of Ruby to be installed without waiting for packages to be created.

Tested on Ubuntu 10.04 LTS with Puppet 2.7. Patches for other operating systems welcome.

Installation
------------

Clone this repo to a nginx directory under your Puppet
modules directory:

    git clone git://github.com/lucaspiller/puppet-ruby.git ruby

This module depends on the sourceinstall module, so clone that too:

    git clone git://github.com/lucaspiller/puppet-sourceinstall.git sourceinstall

Usage
-----

To install and configure Ruby, include the module:

    include ruby

You can override defaults in the Nginx config by including
the module with this special syntax:

    class { nginx: version => '1.9.2-p290' }

Note that this hasn't been tested with Ruby 1.8. If you find any issues, send a pull request :)

Footnotes
-----------

This will also install [Bundler](http://gembundler.com/), and setup alternatives so that /usr/bin/ruby points to this version. If you don't like that feel free to fork it and make it optional, I'll happily accept a pull request for this.

This is losely based upon [rcrowley/puppet-ruby](https://github.com/rcrowley/puppet-ruby).
