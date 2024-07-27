
#====== printing different values with their respective datatypes =====#


class A_taking_values
  def initialize
    @input_array = []
    take_inputs
  end

  #====== Method to take input from the user =====#
  
  def take_inputs
    loop do 
      print "Enter element or enter (exit) to stop: "
      input = gets.chomp

      break if input.downcase == 'exit'

      if input.to_i.to_s == input
        @input_array << input.to_i
      elsif input.to_f.to_s == input
        @input_array << input.to_f
      else
        @input_array << input
      end
    end
  end

  #====== Method to display separated values =====#
  
  def display
    integers = []
    strings = []
    floats = []
    booleans = []

    @input_array.each do |element|
      case element
      when Integer
        integers << element
      when Float
        floats << element
      when String
        if element.downcase == 'true' || element.downcase == 'false'
          booleans << (element.downcase == 'true')
        else
          strings << element
        end
      else
        other << element
      end
    end

    puts "Integers: #{integers.inspect}"
    puts "Floats: #{floats.inspect}"
    puts "Strings: #{strings.inspect}"
    puts "Booleans: #{booleans.inspect}"
  end
end

# Create an instance and display the results
obj = A_taking_values.new
obj.display
