class Employee
  attr_reader :name
  attr_accessor :salary, :manager
  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def manager_name
    self.manager.name
  end

  def self.all
    @@all
  end

  def self.paid_over(min_salary)
    self.all.select { |employee| employee.salary > min_salary }
  end

  def self.find_by_department(department)
    self.all.find { |employee| employee.manager.department == department }
  end

  def tax_bracket
    x = Employee.all.select { |employee| (self.salary - 1000) <= employee.salary && employee.salary <= (self.salary + 1000) }
    x.filter { |employee| employee != self }
  end
end
