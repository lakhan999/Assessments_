# ques..01..printing the string with the given number

=begin str = "hello"
num = 3

def stringg()

puts str*num 
=end

class Str
  def initialize(num, str)
    @strmm = str
    @numm = num
  end

  def multiply_and_print
    puts @strmm*@numm
  end
end

puts "Enter the string:"
ss = gets.chomp
puts "Enter number for multiplication:"
nn = gets.chomp.to_i

obj= Str.new(nn,ss)
obj.multiply_and_print
