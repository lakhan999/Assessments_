# age of the car

class Car
  

   def initialize(make, model,year)
    @m_make=make
    @m_model=model
    @y_year=year
   end

   def find_year
    puts Time.now.year-@y_year

   end
  end

  obj=Car.new("tata","SUV",2021)
  obj.find_year