require 'benchmark'

require_relative './equal_stacks_base.rb'
require_relative './equal_stacks_1.rb'
require_relative './equal_stacks_2.rb'
require_relative './equal_stacks_3.rb'

#h1 = [3, 2, 1, 1, 1]
#h2 = [4, 3, 2]
#h3 = [1, 1, 4, 1]

h1 = Array.new(37455){rand(1..100)}
h2 = Array.new(79656){rand(1..100)}
h3 = Array.new(95073){rand(1..100)}

#puts h1.inspect
#puts h2.inspect
#puts h3.inspect

puts comparison_base(h1, h2, h3)
puts comparison_1(h1, h2, h3)
puts comparison_2(h1, h2, h3)
puts comparison_3(h1, h2, h3)

Benchmark.bm(20) do |bm|
  bm.report('equal_stacks_base'){comparison_base(h1, h2, h3)}
  bm.report('equal_stacks_1'){comparison_1(h1, h2, h3)}
  bm.report('equal_stacks_2'){comparison_2(h1, h2, h3)}
  bm.report('equal_stacks_3'){comparison_3(h1, h2, h3)}
end
