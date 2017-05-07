#A = [1..N]
#N = [1..100]

min = -1000
max = 1000
N = 1000001
input_array = ARGV

input_array.each do |number|
  if number.to_i.between?(min,max)
    else
      puts "You have numbers that are not between [-1000,1000]"
      exit
  end
end

# Task 1 - get third element
def third(array)
  array.fetch(2)
end

if input_array.length < N then
  puts "Third element from given array: #{third(ARGV)}"
end
