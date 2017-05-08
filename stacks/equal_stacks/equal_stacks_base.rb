require 'pry'

def comparison_base(stack1, stack2, stack3)
  until stack1.sum == stack2.sum && stack2.sum == stack3.sum
    sum_min = [stack1.sum, stack2.sum, stack3.sum].min
    collection_arr = [stack1, stack2, stack3]
    collection_arr.each do |arr|
      while arr.sum > sum_min
        arr.shift
      end
    end
  end
  stack1.sum
end

#h1 = [3, 2, 1, 1, 1]
#h2 = [4, 3, 2]
#h3 = [1, 1, 4, 1]

#h1 = Array.new(37455){rand(1..100)}
#h2 = Array.new(79656){rand(1..100)}
#h3 = Array.new(95073){rand(1..100)}

#puts h1.inspect
#puts h2.inspect
#puts h3.inspect

#puts comparison_base(h1, h2, h3)
