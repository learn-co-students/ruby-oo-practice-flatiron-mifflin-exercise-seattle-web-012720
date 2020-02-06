class Employee

    attr_accessor :name, :salary
    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name=manager_name
        @@all <<self
    end

    def self.all
        @@all
    end

    # def manager_name
    #     Employee = Manager.all.each do |employees|
    #         employees.manager_name
    #     end
    # end



end
