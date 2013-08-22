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

Configuration as data

<% end %>

<% slide do %>
Before config builder
---------------------

### Vagrantfile

    config.vm.define :puppetmaster do |box|
      flavor = :centos_6
      set_box box, S3_BOXES[:centos_64_nocm]

      # NOTE: Hostonly _may_ mean no internets if this adapter gets found first!!!
      # Check /etc/resolv.conf !
      box.vm.network :hostonly, "192.168.23.20"

      # NOTE: Share folders, such as Git checkouts of the Puppet source code
      share_puppet_source box

      box.vm.provision :shell, :inline => BOOTSTRAPS[flavor]
      provision_box box, 'server.pp'
    end

<% end %>

<% slide do %>
After config builder
--------------------

### roles.yaml

    ---
    roles:
      puppetmaster:
        private_networks:
          - {auto_network: true}
        synced_folders:
          - {host_path: ~/Source/puppetlabs, guest_path: /puppetlabs}
        provisioners:
          - {type: hosts}
          - {type: pe_bootstrap, role: master}

      puppetagent:
        private_networks:
          - {auto_network: true}
        provisioners:
          - {type: hosts}
          - {type: pe_bootstrap}

<% end %>

<% slide do %>
After config builder
--------------------

### vms.yaml

    ---
    vms:
      -
        name: master
        box: centos_64_nocom
        roles: puppetmaster
      -
        name: agent
        box: debian_64_nocm
        roles: puppetagent

<% end %>

<% slide do %>
Pick your data source
---------------------

  * YAML
  * JSON
  * XML
  * interpretive dance

<% notes do %>
  * Use YAML!
  * Or JSON!
  * It doesn't matter!
<% end %>

<% end %>

<% slide do %>
What does Oscar do?
-------------------

  * Dependencies!
  * Everything is a standalone plugin
  * Mix and match

<% notes do %>
  * Don't need the full stack? Don't use it
  * Install what plugins you need
  * Unopinionated API, opinionated defaults
<% end %>
<% end %>

<% slide do %>
What does Oscar do?
-------------------

  * Templates and defaults
  * Sane defaults to get you started

<% notes do %>
  * Oscar does one other thing
  * Ships default roles and information
  * Opinionated defaults to get you started
<% end %>
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

  * All the perks of Vagrant
  * Minimal user setup
  * Complex config made easy

<% notes do %>
  * All the perks of Vagrant
    * All the provisioners
    * All the providers
    * DO WHAT YOU WANT
  * Requires minimal user setup
<% end %>
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
