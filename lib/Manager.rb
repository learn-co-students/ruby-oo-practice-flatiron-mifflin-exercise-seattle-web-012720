class Manager

    attr_reader :name, :department, :age

    @@all = [] 

    def initialize(name, department, age)
        @name = name 
        @department = department 
        @age = age 
        @employees = []
        @@all << self
    end

    def employees
        @employees 
    end 

    def employees=(name) 
        @employees << name
    end

    def self.all 
        @@all 
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, salary) 
        employee.manager_name=(self.name)
        self.employees=(employee)
    end

    def self.all_departments 
        self.all.map {|manager| manager.department }.uniq 
    end

    def self.average_age 
        self.all.map {|manager| manager.age }.sum / @@all.length 
    end 

end
