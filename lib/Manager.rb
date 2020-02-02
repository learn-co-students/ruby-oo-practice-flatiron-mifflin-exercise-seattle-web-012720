class Manager
    attr_accessor :name, :department
    attr_reader :age

    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        save
    end

    def employees
        Employee.all.select {|e| e.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map {|manager| manager.department}
    end

    def self.average_age
        list = @@all.map {|manager| manager.age}
        list.sum / list.length
    end

    def save
        @@all << self
    end

    def self.all 
        @@all
    end

end
