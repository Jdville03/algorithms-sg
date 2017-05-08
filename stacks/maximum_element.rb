require 'pry'
require 'colorize'

# HackerRank submission

#t = gets.strip.to_i
#stack_arr = []
#for a0 in (0..t-1)
#  input = gets.strip
#  input = input.split(' ').map(&:to_i)
#  case input[0]
#  when 1 then stack_arr.push(input[1])
#  when 2 then stack_arr.pop
#  when 3 then puts stack_arr.max
#  end
#end


# Solution for explanation

#t = gets.strip.to_i
#t = rand(1..100)
t = 10

stack_arr = []

for a0 in (0..t-1)
  puts "stack: " + stack_arr.inspect

  #input = gets.strip
  input_string = "#{rand(1..3)} #{rand(1..100)}"
  input_string = input_string[0] if input_string[0] != "1"
  puts ("input: " + input_string).colorize(:red)
  input = input_string.split(' ').map(&:to_i)

  case input[0]
  when 1
    stack_arr.push(input[1])
  when 2
    stack_arr.pop
  #when 3
  #  puts stack_arr.max
  when 3
    if stack_arr.empty?
      puts "The stack is empty"
    else
      puts stack_arr.max
    end
  end
end
