require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


michael = Manager.new("Michael", 39, "Sales")
deangelo = Manager.new("Deangelo", 44, "Marketing")
robert = Manager.new("Robert", 42, "Accounting")
andy = Manager.new("Andy", 34, "Customer Service")
nelly = Manager.new("Nelly", 38, "Human Resources")

dwight = michael.hire_employee("Dwight", 70000)
creed = michael.hire_employee("Creed", 200000)

jim = deangelo.hire_employee("Jim", 60000)
pam = deangelo.hire_employee("Pam", 61000)

mindy = robert.hire_employee("Mindy", 50000)
ryan = robert.hire_employee("Ryan", 49000)

toby = andy.hire_employee("Toby", 40000)
angela = andy.hire_employee("Angela", 60000)

karen = nelly.hire_employee("Karen", 50000)
erin = nelly.hire_employee("Erin", 35000)


binding.pry
puts "done"
