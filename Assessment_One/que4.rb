#=== global and constant variables ===#

$name ="lakhan"
Mobilenum="8959376329"

class Employees
  def initialize
    @n_name=$name
    @m_mobilenum=Mobilenum
  end

  def printdata
    puts "name :#{@n_name}"
    puts "mobile number :#{@m_mobilenum}"
  end
end
obj1 = Employees.new()
obj1.printdata
