# Method to prompt the user to enter a positive number



def get_positive_number
  count = 0
  while count < 5
    begin
      puts "Please enter a positive number:"
      input = gets.chomp
      number = Integer(input)
      
      if number < 0
        puts "You entered a negative number. Please try again."
        redo
      end
      
      puts "You entered a positive number: #{number}"
      break
      
    rescue ArgumentError
      puts "Invalid input. Please enter an integer."
      retry
    end
    
    count += 1
  end
end


get_positive_number
