
#==== using each iterator ====#

class Multiply
  
  def initialize(arr)
    arr.each do |i|
      puts i*2
  end
end
end

array=[1,2,3,4,5]
obj = Multiply.new(array) 
