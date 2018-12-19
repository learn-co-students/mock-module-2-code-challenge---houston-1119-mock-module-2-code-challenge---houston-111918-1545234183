class Dog < ApplicationRecord
    has_many :employees

    def num_employees
        self.employees
    end

end

@dog = Dog.create(name: "Brady")
@dog.num_employees
