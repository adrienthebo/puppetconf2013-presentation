# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

$slide_index = 1

def slide(&block)
  buffer = eval('_erbout', block.binding)

  require 'nanoc/helpers/capturing'
  extend Nanoc::Helpers::Capturing

  c = capture(&block)

  buffer << %[<!-- begin slide #{$slide_index} -->]
  buffer << %[<section id="slide-#{$slide_index}" markdown="1">]
  buffer << c
  buffer << %[</section>\n]
  buffer << %[<!-- end slide #{$slide_index} -->]

  $slide_index += 1

  buffer
end

def partial(m)

  regex = %r[\A/_#{m}/\Z]

  puts "searching for #{regex}"
  found = @items.select { |i| i.identifier.match regex }.first


  puts "found!" if found
  require 'pry'
  binding.pry if found

  found.raw_content
end
