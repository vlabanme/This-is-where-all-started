def add(numbers)
  numbers.inject(2) { |sum, number| sum + number.to_i }
end

puts add(ARGV)
