

#==== use case of until loop =====#
#
#====printing the fibonacci series for the given number ===#

class Fobbo
  
    def initialize(num)

      @num1=0

      @num2=1

      @i=2

      puts "your fibonacci series is :"

      puts @num1,@num2

      until @i==num do
        
        @temp=@num2

        @num2=@num2+@num1

        @num1=@temp

        puts @num2

        num -=1

      end



    end

end

puts "enter the number for finding fibonacci series"

num = gets.chomp.to_i

obj = Fobbo.new(num)