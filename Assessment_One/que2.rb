#=== hash===#

# Define the hash with different data types as values
hash_of_varity = {
  name: "Lakhan",        
  age: 30,              
  height: 5.5,          
  male: true      
}

def sum_numeric_values(hash)
  sum = 0
  hash.each_value do |value|
    sum += value if value.is_a?(Numeric)
  end
  sum
end

# Call the method and print the result
result = sum_numeric_values(hash_of_varity)
puts "The sum of all numeric values in the hash is: #{result}"

