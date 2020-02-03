class Manager
    attr_reader :age
    attr_accessor :name, :department
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age.to_i
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        x = Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}.uniq
    end

    def self.average_age
        ages = self.all.map {|manager| manager.age.to_f}
        average = (ages.sum)/(ages.length).to_f
    end
end

