<% slide do %>

Introducing Oscar
-----------------

<% end %>

<% slide do %>
Oscar in a nutshell
-------------------

  * Set of Vagrant plugins
  * Built for mutable environments

<% notes do %>
  * Optimized for mutable environments
  * Multiple interconnected machines
  * Change should be easy
<% end %>

<% end %>

<% slide do %>
An overview
-----------

  * `vagrant-hosts`
  * `vagrant-auto_network`
  * `vagrant-pe_build`
  * `vagrant-config_builder`
  * `oscar`

<% notes do %>
  * `vagrant-hosts`: address resolution with Vagrant config
  * `vagrant-auto_network`: zero configuration network config
  * `vagrant-pe_build`: Download and install PE with no hassle
  * `vagrant-config_builder`: Vagrant configuration as data
  * `oscar`: templates and dependencies
<% end %>

<% end %>

<% slide do %>
Vagrant hosts
-------------

  * DNS record types:
    * starting with A: A, AAAA, AFSDB, APL
    * starting with C: CAA, CERT, CNAME
    * starting with D: DHCID, DLV, DNAME, DNSKEY, DS
    * ...
  * We need: name -> ip address
<% end %>

<% slide do %>
Vagrant hosts
-------------

  * Inside of a transitory environment
  * Query private network addresses
  * -> `/etc/hosts`
  * Go do something you care about
  * Or manage BIND on $platform
<% end %>

<% slide do %>
Vagrant Auto-network
--------------------

  * Have to add extra interfaces
  * f$&k it. STATIC IP ADDRESSES FOR ALL

    config.vm.network :private_network, :auto_network => true

<% end %>

<% slide do %>
Vagrant PE Build
-------------

  * PE configuration optimized for Vagrant
  * Download installers on demand
<% end %>

<% slide do %>
Vagrant config builder
----------------------

  * Use YAML!
  * Or JSON!
  * It doesn't matter!
<% end %>

<% slide do %>
PE stack in a box
-----------------

  * Configure your development environment like production
  * Develop your modules in complete isolation
  * Simulate app deployments before going live
  * Pre-production in a box!
  * Stable Puppet environment
<% end %>

<% slide do %>
What Oscar gets you
-------------------

  * Provider agnostic network configuration
    * AWS
    * Rackspace
    * Fusion
  * Reliable network addressing
  * Zero configuration host resolution
<% end %>

<% slide do %>
What Oscar gets you
-------------------

Goal - from zero to PE in `vagrant up`
<% end %>

<% slide do %>
Who uses it?
------------

  * Sales Engineering
  * Commercial/Open Source Support
  * People... and stuff...
<% end %>
