require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


Emma = Manager.new("Emma", 'P&C', 22)
Caroline = Manager.new("Caroline", 'M&A', 21)
Jenny = Manager.new("Jenny", 'Accounts', 24)

Bob = Employee.new("Bob", 10000, Emma)
Joe = Employee.new("Joe", 12000, Jenny)
Harry = Employee.new("Harry", 11000, Emma)
Mike = Employee.new("Mike", 13000, Caroline)

binding.pry
puts "done"
