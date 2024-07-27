# This Ruby class generates and displays the first 10 prime numbers using a loop and checks for prime
# numbers using a simple algorithm.
#=== prime numbers ===#

#==== global variable ($num) to access the value in different methods or loops ====#
$num = 2

class Is_prime
  @count = 0
  @@array = []
 
#====== while loop runs for 10 times ====#

while @count < 10 do
  @flag = 0
  @number = $num
  
  if @number == 2
    @flag = 0
  elsif @number % 2 == 0
    @flag = 1
  else
    nextvalue = Math.sqrt(@number).to_i    #=== counting the minimum length to iterate the loop to find the prime value ===#
    for j in 3..nextvalue
      if @number % j == 0
        @flag = 1
        break
      end
    end
  end

  if @flag == 0
      @@array << @number.to_i     #== assigning value to the array for printing desirable output ====#
    @count += 1
  end
  
  $num += 1
end
def display
puts @@array.inspect
end
end

obj=Is_prime.new
obj.display
