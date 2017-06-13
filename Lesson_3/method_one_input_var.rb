#!/usr/bin/ruby

class Strintr
  
  def numeric?(object)
    true if Float(object) rescue false
  end

  def string_or_not(input)
    if input.nil? or input.empty?
      puts "Input is NOT a string!!!"
    else
     integer_or_not(input)
    end
  end

  def integer_or_not(input)
    if numeric?(input)
      puts input + " is a string and Integer"
    else
      puts "Input is as String but NOT Integer!!!"
    end
  end
end

puts "Enter one variable:"
userin = gets.chomp

Strintr.new.string_or_not(userin)
