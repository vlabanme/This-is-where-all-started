#!/usr/bin/ruby

class ReverseUp
  
  def string_or_not(input)
    if input.nil? or input.empty?
      puts "Input is NOT a string!!!"
    else
     string_reverse(input)
    end
  end

  def string_reverse(input)
    input.reverse!
    uppercase(input)
  end

  def uppercase(input)
    input.capitalize!
    input.chop!
    last_char = input.split('').last
    last_char.upcase!
    puts input + last_char
  end

end

puts "Enter one variable:"
userin = gets.chomp

ReverseUp.new.string_or_not(userin)
