class Dog < ApplicationRecord
  has_many :employees
  def self.most_employees
    self.all.sort_by{|dog| dog.employees.length}.reverse
  end
end
