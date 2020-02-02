class Employee
    attr_accessor :name, :manager
    attr_reader :salary

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        save
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(num)
        @@all.select {|e| e.salary > num}
    end

    def self.find_by_department(dep)
        @@all.find {|e| e.manager.department == dep}
    end

    def tax_bracket
        list = self.class.all.select {|e| e.salary.between?(self.salary - 1000, self.salary + 1000)}
        list.delete(self)
        list
    end

    def save
        @@all << self
    end

    def self.all 
        @@all
    end

end