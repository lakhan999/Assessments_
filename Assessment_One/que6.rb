#=== different logical operater ====#

def boolianss(first,second)
 
  @n= first & second
   puts "result of logical AND operator :#{@n}"
   @m= first | second
  puts "result of logical OR operator :#{@m}"
  @op= !(first & second) 
  puts "result of logical NOT operator :#{@op}"

end

boolianss(true,false)