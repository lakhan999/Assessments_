# employee manager class

class EmployeeManager
  def initialize(employees, threshold)
    @employees = employees
    @threshold = threshold
  end

# it will filter the employees details i
  def filtering_employees
    @filtered_employees = @employees.select do |id, details|
      details[:performance] > @threshold
    end
  end

# sort_employees is the method for sorting the employees details according to the given criteria
  def sorting_employees
    @sorted_employees = @filtered_employees.sort_by do |id, details|
      [details[:department], -details[:salary], details[:age]]
    end
  end

# this method will formate the sorted details according to the desirable output 
  def format_employees
    @formatted_output = ""
    current_department = nil

    @sorted_employees.each do |id, details|
      if details[:department] != current_department
        current_department = details[:department]
        @formatted_output += "\nDepartment: #{current_department}\n"
      end
      @formatted_output += " Name: #{details[:name]}, Age: #{details[:age]}, Salary: #{details[:salary]}\n"
    end
  end

# here we are writing employee details to the file(employees_output.txt)
  def write_to_file(filename)
    File.open(filename, 'w') do |file|
      file.write(@formatted_output)
    end
  end

  # process will call all the methods 
  def final_call(filename)
    filtering_employees
    sorting_employees
    format_employees
    write_to_file(filename)
  end
end

# employees hash storing values of employees
employees = {
  101 => {name: "Alice", age: 30, salary: 70000, department: "HR", performance: 85},
  102 => {name: "Bob", age: 25, salary: 90000, department: "IT", performance: 95},
  103 => {name: "Charlie", age: 35, salary: 120000, department: "IT", performance: 90},
  104 => {name: "David", age: 40, salary: 60000, department: "Finance", performance: 70},
  105 => {name: "Eve", age: 28, salary: 110000, department: "IT", performance: 99}
}

threshold = 80
output_file = "employees_output.txt"

manager = EmployeeManager.new(employees, threshold)
manager.final_call(output_file)

puts "The formatted employee data is written to #{output_file}"
