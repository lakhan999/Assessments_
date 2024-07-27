# The Weekend class takes a user-inputted day and outputs a message based on which day of the week it
# is.
#== case statement ====#

class Weekend
  def initialize(day)
    case day
    when "monday"
      puts "Just starting of the week"
    
    when "tuesday"
      puts "2nd day of the week"

    when "wednesday"
      puts "mid-week "

    when "thursday"
      puts "busy day"

    when "friday"
      puts "near to end the week "

    else 
      puts "please enter the currect day"
    end
  end
end


puts "enter the day"
day=gets.chomp
obj=Weekend.new(day)