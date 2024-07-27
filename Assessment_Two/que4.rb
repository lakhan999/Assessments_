# This Ruby class calculates the factorial of a given number using an initializer and a method to
# print the result.

#=== programm to find factorial ===#

class Fecto

  def initialize(num)
                              #==with the help of  initializer we find factorial here ===#
    @fectorial=1

    while num>1
      @fectorial*=num

      num-=1
    end
  end

  def printfact
    
    puts "Factorial for the given number is :#{@fectorial}"
  end
end

puts "enter the number for finding factorial"
number= gets.chomp.to_i

obj=Fecto.new(number)
obj.printfact