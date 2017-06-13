#!/usr/bin/ruby

class Instancevar
  
  def what_to_say(hi)
    @say_hi = hi
  end

  def say()
    puts "Saying #@say_hi"
  end

end

object = Instancevar.new("by using instance variable")
object.say()
