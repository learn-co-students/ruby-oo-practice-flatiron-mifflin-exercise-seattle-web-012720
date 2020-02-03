class Employee

    attr_reader :name, :salary 

    @@all = [] 

    def initialize(name, salary)
        @name = name
        @salary = salary 
        @@all << self
    end

    def manager_name 
        @manager_name 
    end 
    
    def manager_name=(name)
        @manager_name = name 
    end

    def self.all
        @@all 
    end

    def self.paid_over(salary)
        @@all.select {|employee| 
        employee.salary > salary }
    end 

    def self.find_by_department(department)
        Manager.all.find {|manager| manager.department == department 
        }.employees.first
    end 

    def tax_bracket 
        @@all.select {|employee|
        employee.salary > self.salary - 1000 && employee.salary < self.salary + 1000 && employee.name != self.name} 
    end

end
