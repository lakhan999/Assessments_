#=== printing the age of the given name in a single line ====#

puts "Enter your name"
name = gets.chomp
puts "Enter your age"
age = gets.chomp.to_i

puts "hello #{name} you are #{age} year old"