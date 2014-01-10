class Person
  attr_accessor :name, :age, :num_pets, :pets

  def initialize(name, age, num_pets, pets={})
    @name = name
    @age = age
    @num_pets = num_pets
    @pets = pets
  end

  def add_pet(pet) # Pass pet object
    @pets[pet.name] = pet # Add pet to client's hash
  end

  def bye_pet(pet) # Pass String of pet's name
    @pets.delete(pet) # Remove pet from client's hash
  end
end
