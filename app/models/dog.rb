class Dog < ApplicationRecord
  has_many :employees
  
  def to_s
    self.name + " " + self.breed + " " + self.age
  end
  
  # def name
  #   self.name.to_s
  # end
  #
  # def breed
  #   self.breed.to_s
  # end
  #
  # def age
  #   self.age.to_s
  # end
  #
  # def dog_info
  #   "Name: " + self.name.to_s + '\n' + "Breed: " + self.breed.to_s + '\n' + "Age: " + self.age.to_s
  # end
  
end
