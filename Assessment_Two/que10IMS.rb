#==== inventory management system ====#


class Inventory_management_system
  
  
    def initialize
      @hash={}
    end

           #==== add_item method to add the values ====#

          def add_item(name, quantity)
            
            if @hash.key?(name)
              update_item(name,quantity)
            else
            @hash[name]=quantity
            puts "Item #{name} added with #{quantity} quantity"
            end
            
          end
            
          #==== remove_item method to remove the given item ====#

          def remove_item(name)
            
            @hash.delete_if{|key,value|key==name}

            puts "Item #{name} remove from the inventory "

          end

          #==== update item method to add or update the existing values in hash ====#

          def update_item(name,new_quantity)

            if @hash.key?(name)
  
              @hash[name]=new_quantity

            end

            puts "Item  #{name} updated to new quantity #{new_quantity} "

          end

          #==== view_item for listing out the existing item ====#

          def view_item
            
            puts "== Inventory =="

            @hash.each do |key,value|
              
              puts "#{key} : #{value} "

            end

          end

          def search_for_an_item(name)
          

            if @hash.key?(name)
              
              puts "Item found : #{name}"

            else 

              puts "#{name} not found "

            end

          end
        end

    def manu
        
          puts "\n ========= Welcome to the =========="
          puts "=== Inventory management System ==="
          puts "Manu is as follows"
          puts "1.Add items to the inventory."
          puts "2.Remove items from the inventory"
          puts "3.Update item quantities"
          puts "4.View all items in the inventory"
          puts "5.Search for an item by name"
          puts "6.Exit"
          

    end
 
    inventory = Inventory_management_system.new

    loop do

      @alter=3

      manu
      choice = gets.chomp.to_i
    
      case choice

      when 1
        print "Enter item name: "
        name = gets.chomp
        print "Enter quantity: "
        quantity = gets.chomp.to_i
        inventory.add_item(name, quantity)

      when 2
        print "Enter item name: "
        name = gets.chomp
        inventory.remove_item(name)
      when 3

        print "Enter item name: "
        name = gets.chomp
        print "Enter new quantity: "
        quantity = gets.chomp.to_i
        inventory.update_item(name, quantity)
      when 4
        inventory.view_item

      when 5
        print "Enter item name: "
        name = gets.chomp
        inventory.search_for_an_item(name)

      when 6
        puts "Exiting the program"
        break
      else
          puts "Invalid option. Please choose a valid option."
      end 
    end
    