#A = [1..N]
#N = [1..100]

min = -1000
max = 1000
N = 1000001
input_array = ARGV

def number_or_nil(string)
  Integer(string || '')
rescue ArgumentError
  nil
end

#def input_array
#  ARGV.each do |i|
#    i.to_i
#  end
#end

#
input_array.each do |number|
  if number.to_i.between?(min,max)
    else
      puts "You have numbers that are not between [-1000,1000]"
      exit
  end
end

#Task 1 - get first_three element
def first_three(array)
  (0..2).map do |x|
    number_or_nil(array[x])
  end
end

if input_array.length < N then
  puts "First three elements: #{first_three(ARGV)}"
end
