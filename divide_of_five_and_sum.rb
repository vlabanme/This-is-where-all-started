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

#Task 3 - get every_second element using every_other method
def every_second(array)
  array.each_slice(5).to_a.map do |new_array| 
    new_array.inject(0) do |sum, x| 
      sum + x
    end
  end
end

# if elements < 1000001 then we're ok
if input_array.length < N then
  puts "Divide of 5 and arrays SUMs: #{every_second(ARGV[0].scan(/\w+/).map(&:to_i))}"
else
  puts "Too many elemens (> 1000001)"
end

# RESULT example:
# $ ruby divide_of_five_and_sum.rb "[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]"
# ==>  Divide of 5 and arrays SUMs: [15, 40, 65, 16]

