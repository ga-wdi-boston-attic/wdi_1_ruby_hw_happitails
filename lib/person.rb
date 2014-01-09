class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    # pet list is a hash with names as keys and values as animal obj
    @pets = {}
  end

  # instance methods for a person
  # accept a pet and add it to their pet list
  def add_pet(animal)
    @pets.merge!({animal.name.to_sym => animal})
  end

  # remove a pet from their list
  def remove_pet(animal)
    @pets.reject! { |key, value| key == animal.name.to_sym}
  end
end
