class Employee
    @@all = []
    def self.all
        @@all
    end

    attr_reader :name
    attr_accessor :salary, :manager
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        self.class.all << self
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(num)
        self.all.select {|employee| employee.salary > num}
    end

    def self.find_by_department(dept_name)
        self.all.find {|employee| employee.manager.department == dept_name}
    end

    def tax_bracket
        bracket = Employee.all.select do |employee|
            (self.salary - 1000) <= employee.salary && employee.salary <= (self.salary + 1000)
        end
        bracket.reject {|employee| employee == self}
    end

end
