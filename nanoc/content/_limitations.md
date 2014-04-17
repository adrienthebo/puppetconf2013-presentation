<% slide do %>
Limitations
----------

If this presentation was all roses and butterflies

Then it would be very boring.

<% notes do %>
  * If I came only to sing praises of Vagrant
  * I would just go to Q & A right now
<% end %>
<% end %>

<% slide do %>
Choose your own adventure
-------------------------

  * Like any tool, Vagrant makes tradeoffs
  * Some use cases are easier than others

<% notes do %>
  * Like any tool, Vagrant makes tradeoffs
  * Some use cases are easier than others
  * Vagrant is extremely good at some things
  * There are cases where it's less optimized for
<% end %>
<% end %>

<% slide do %>
Vagrant excels at...
-----------------

  * Static/Stable environments
  * Configure VM definition
  * Set up provisioning
  * `git commit -m 'Add Vagrantfile'`

<% notes do %>
  * Stable devlopment environments
  * One shot configuration
    * Configure VM definition
    * Set up provisioning
    * `git commit -m 'Add Vagrantfile'`
<% end %>
<% end %>

<% slide do %>
Vagrant struggles with...
-------------------

  * Highly mutable environments
  * Complex provisioning steps
  * Configuration reuse
    * Partial configuration
    * Distributable configuration

<% notes do %>
  * My experience
    * Vagrant starts choking on rapid change
    * Adding/removing VMs
    * Non-trivial configuration
    * Sharing partial configuration
    * Replicating heavyweight environments

  * Reiterate - vagrant is fantastic, but isn't a cure-all
<% end %>
<% end %>

<% slide do %>
The Vagrantfile DSL
-------------------------

  * Pro - all the power of Ruby
  * Con - all the power of Ruby

<% notes do %>
  * Great for Ruby developers
  * Less great for non-ruby/non-developers
  * Juggling infrastructure = can't commit and hand off
  * Ruby DSLs: It's a tarp!
<% end %>
<% end %>

<%= partial 'madness' %>

<%= partial 'limitations-network' %>

<% slide do %>
The reality
-----------

  * Can't support every configuration
  * *Shouldn't* support every configuration
  * Batteries not included

<% notes do %>
  * Can't support every configuration
  * *Shouldn't* support every configuration
  * Batteries included
    * But only AA
    * need 9V? bring your own
<% end %>
<% end %>

