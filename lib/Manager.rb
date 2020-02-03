class Manager

    @@all = []
    def self.all
        @@all
    end

    attr_reader :name
    attr_accessor :department, :age
    def initialize(name, age, department)
        @name = name
        @age = age
        #only one department per manager!
        if Manager.all.any? {|manager| manager.department == department}
            puts "Please select a different department"
            @department = "UPDATE DEPARTMENT"
        else
            @department = department
        end

        self.class.all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        sum = self.all.sum {|manager| manager.age}
        sum.to_f/self.all.count
    end
end
