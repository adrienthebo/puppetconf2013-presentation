# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

$slide_index = 1

def slide(&block)
  buffer = eval('_erbout', block.binding)

  str = <<-STR
  <section id="slide-#{$slide_index}" markdown=0>
    #{yield}
  </section>
  STR

  buffer << str

  buffer
end
