require 'pry'

def solution(expression)
  #while expression.gsub!("[]", "") || expression.gsub!("()", "") || expression.gsub!("{}", "")
  #  binding.pry
  #end
  until expression.gsub!("[]", "") == nil && expression.gsub!("()", "") == nil && expression.gsub!("{}", "") == nil
    #binding.pry
  end

  if expression.length > 0
    puts "NO"
  else
    puts "YES"
  end
end


expression = "{[()]}" #=> YES
#expression = "{[(])}" #=> NO
#expression = "{{[[(())]]}}" #=> YES

#expression = "{}{}[][]()()" #=> YES
#expression = "{}{[()]}()[]" #=> YES
#expression = "{[()]}[(]" #=> NO

solution(expression)
