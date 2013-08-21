# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

def slide(&block)
  buffer = eval('_erbout', block.binding)

  require 'nanoc/helpers/capturing'
  extend Nanoc::Helpers::Capturing

  c = capture(&block)

  buffer << %[<!-- begin slide -->]
  buffer << %[<section markdown="1">]
  buffer << c
  buffer << %[</section>\n]
  buffer << %[<!-- end slide -->]

  $slide_index += 1

  buffer
end

def notes(&block)
  buffer = eval('_erbout', block.binding)

  require 'nanoc/helpers/capturing'
  extend Nanoc::Helpers::Capturing

  c = capture(&block)

  buffer << %[<aside class="notes" markdown="1">]
  buffer << c
  buffer << %[</aside>\n]

  buffer
end

def partial(m)

  regex = %r[\A/_#{m}/\Z]

  puts "searching for #{regex}"
  found = @items.select { |i| i.identifier.match regex }.first
  puts "found!" if found

  found ? found.compiled_content : %[<!-- Warning: could not find partial #{m.inspect} -->]
end
