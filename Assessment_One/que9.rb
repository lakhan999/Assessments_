=begin 
fect is the method which holds the factorial values for the given number
=end

def fect(n)
  @facto=1        #facto initialize with 1 so we can hold the multiplied  values 
  for i in 1..n
    @facto=@facto*i
  end
  puts "fectorial is:#{@facto}"     # here we printing the final factorial value 
end

puts "enter the number for fectorial"
num=gets.chomp.to_i
fect(num)