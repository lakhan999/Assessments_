# This Ruby class takes a number as input and determines if it is even or odd.
class Evenodd
  def initialize(num)
    if num % 2 == 0
      puts "Even"
    else
      puts "Odd"
    end
  end 
end

puts "enter the number to check:"
num = gets.chomp.to_i

obj=Evenodd.new(num)
