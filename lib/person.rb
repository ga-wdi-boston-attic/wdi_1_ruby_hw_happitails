class Person
  attr_accessor :name, :age, :num_pets, :pets

  def initialize(name, age, num_pets, pets={})
    @name = name
    @age = age
    @num_pets = num_pets
    @pets = pets
  end

  def add_pet(pet)
    @pets[pet.name.to_sym] = pet # Add pet to client's hash
  end

  def bye_pet(pet)
    @pets.delete(pet.name.to_sym) # Remove pet from client's hash
  end
end
