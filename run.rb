require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("Michael Scott","AK-47 Floor 3",132)
manager2 = Manager.new("Bel Pott","Bazukkkkka Floor 1",99)




employee1 = Employee.new("Dwight", 6000, "Bel Pott")
employee2 = Employee.new("jim", 8000, "Bel Pott")
employee3 = Employee.new("Ryan", 3000, "Michael Scott")
employee4 = Employee.new("Andie", 6000, "Michael Scott")

puts "done"

binding.pry

