require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
bob = Manager.new("Bob", 40, "sales")
joe = Manager.new("Joe", 30, "shipping")
cathy = Manager.new("Cathy", 38, "R&D")
lisa = Manager.new("Lisa", 39, "Design")


ben = joe.hire_employee("Ben", 3400)
diana = cathy.hire_employee("Diana", 2000)
monica = bob.hire_employee("Monica", 8000)
ian = lisa.hire_employee("Ian", 2500)
jess = joe.hire_employee("Jess", 2800)

binding.pry
puts "done"
