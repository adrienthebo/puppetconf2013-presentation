<% slide do %>
Limitations
----------

If this presentation was all roses and butterflies

Then it would be very boring.
<% end %>

<% slide do %>
Choose your own adventure
-------------------------

  * Like any tool, Vagrant makes tradeoffs
  * Some use cases are easier than others
<% end %>

<% slide do %>
Vagrant excels at...
-----------------

  * Static/Stable environments
  * Configure VM definition
  * Set up provisioning
  * `git commit -m 'Add Vagrantfile'`
<% end %>

<% slide do %>
Vagrant struggles with...
-------------------

  * Highly mutable environments
  * Complex provisioning steps
  * Configuration reuse
    * Partial configuration
    * Distributable configuration
<% end %>

<% slide do %>
The Vagrantfile DSL
-------------------------

  * Pro - all the power of Ruby
  * Con - all the power of Ruby

<% notes do %>
  * Great for Ruby developers
  * Less great for non-developers
  * It's a tarp!
<% end %>

<% end %>

<%= partial 'madness' %>

<%= partial 'limitations-network' %>

<% slide do %>
The reality
-----------

  * Vagrant can't support every configuration out of the box
  * Batteries not included
<% end %>

