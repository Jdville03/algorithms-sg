require 'pry'

def comparison_1(stack1, stack2, stack3)
  sum_arr = [stack1.sum, stack2.sum, stack3.sum]
  until sum_arr[0] == sum_arr[1] && sum_arr[1] == sum_arr[2]
    sum_min = sum_arr.min
    collection_arr = [stack1, stack2, stack3]
    collection_arr.each.with_index do |arr, index|
      while sum_arr[index] > sum_min
        sum_arr[index] -= arr.shift
      end
    end
  end
  sum_arr[0]
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

#puts comparison_1(h1, h2, h3)
