#!/usr/bin/ruby

class Constantvar
    Howmany = 100
  def say
    puts "I tell you HI #{Howmany} time!!! Btw Howmany is constant var :)"
  end

end

object = Constantvar.new()
object.say
