#== sum of  list elements ===#

# Method to calculate the sum of a list of numbers using a while loop
def sum_of_numbers(numbers)
  sum = 0
  i = 0
  while i < numbers.length
    sum += numbers[i]
    i += 1
  end
  sum
end
puts "Enter a list of numbers separated by spaces:"
input = gets.chomp
numbers = input.split.map(&:to_i)
sum = sum_of_numbers(numbers)
puts "The sum of the numbers is: #{sum}"