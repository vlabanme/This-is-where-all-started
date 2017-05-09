#A = [1..N]
#N = [1..100]

min = -1000
max = 1000
N = 1000001
input_array = ARGV[0].scan(/\w+/).map(&:to_i)

# Check if array elements are [-1000,1000]
input_array.each do |number|
  if number.to_i.between?(min,max)
    else
      puts "You have numbers that are not between [-1000,1000]"
      exit
  end
end

# method to select every second element
class Array
  def every(element)
    select {|second| index(second) % element == 1}
  end
  def every_other
    every 2
  end
end

#Task 3 - get every_second element using every_other method
def every_second(array)
    array.every_other
end

if input_array.length < N then
  puts "First three elements: #{every_second(ARGV[0].scan(/\w+/).map(&:to_i))}"
end
