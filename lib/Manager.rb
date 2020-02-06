require 'pry'
class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)

        @name = name
        @department = department
        @age = age
        @employees=[]
        
        @@all << self
    end

    def self.all
        @@all
    end

    def employees 
       
        @employees= Employee.all.each do |employees|
           employees.manager_name
        end
        @employees
        
    end
    
    def self.Manager
        @manager = Manager.all.each do |manager|
            manager.name
        end
    end

    def hire_employee(name, salary)
        self.employees << Employee.new(name, salary)
    end 

    def self.all_departments
        @department = Employee.all.each do |department|
            department.manager
        end

    end

    def self.average_age
        @manager = Manager.all.each do |manager|
            manager.average_age
        end
    end

end
