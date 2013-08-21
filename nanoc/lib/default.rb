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

def notes(&block)
  buffer = eval('_erbout', block.binding)

  require 'nanoc/helpers/capturing'
  extend Nanoc::Helpers::Capturing

  c = capture(&block)

  buffer << %[<!-- begin notes for slide #{$slide_index} -->]
  buffer << %[<aside class="notes" markdown="1">]
  buffer << c
  buffer << %[</aside>\n]
  buffer << %[<!-- end nodes for slide #{$slide_index} -->]

  buffer
end

def partial(m)

  regex = %r[\A/_#{m}/\Z]

  puts "searching for #{regex}"
  found = @items.select { |i| i.identifier.match regex }.first
  puts "found!" if found

  found ? found.compiled_content : %[<!-- Warning: could not find partial #{m.inspect} -->]
end
