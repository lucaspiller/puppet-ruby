Puppet Ruby Module
==================

Module to install Ruby from source. Allows versions of Ruby to be installed for which a package may not exist.

Tested on Ubuntu 10.04 LTS with Puppet 2.7. Patches for other operating systems welcome.

Installation
------------

Clone this repo to a ruby directory under your Puppet
modules directory:

    git clone git://github.com/lucaspiller/puppet-ruby.git ruby

Usage
-----

To install and configure Ruby, include the module:

    include ruby

You can override defaults in the Ruby config by including
the module with this special syntax:

    class { ruby: version => '1.9.2-p290' }

This module uses [ruby-build](https://github.com/sstephenson/ruby-build) to install Ruby and any related tools (e.g. Rubygems), as such it supports any of the [definitions ruby-build supports](https://github.com/sstephenson/ruby-build/tree/master/share/ruby-build). For example to instal Ruby Enterprise Edition:

    class { ruby: version => 'ree-1.8.7-2011.12' }

It doesn't deal with other dependencies though, so if you want to use JRuby you'll need to install a JRE first.

Footnotes
-----------

This will also install [Bundler](http://gembundler.com/), and setup alternatives so that `/usr/bin/ruby` points to this version. If you don't like that feel free to fork it and make it optional, I'll happily accept a pull request for this. [ruby-build](https://github.com/sstephenson/ruby-build) will be installed into `/opt/ruby-build`.
