require 'pry'
require_relative 'data'

# Defined the class shelter
class Shelter
  attr_accessor :name, :address, :animals, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end

  def return_animals
    puts @animals
  end

  def return_clients
    puts @clients
  end

end

# Defined the class Person
class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    @pets = {}
  end

# Defined a method that will add an adopted pet to a person's number of pets and pets hash
# The method will simultaneously remove that same pet from the shelter
  def adopt_pet_from_shelter(animal_name, animal_instance_name, shelter_instance_name)
    @number_of_pets = @number_of_pets + 1
    @pets[animal_name] = animal_instance_name
    shelter_instance_name.animals.delete(animal_name)
  end

# Defined a method that will remove a pet from a person's number of pets and pets hash
# The method will simultaneously add that same pet to the shelter's animal hash
  def give_pet_up_to_shelter(animal_name, animal_instance_name, shelter_instance_name)
    @number_of_pets = @number_of_pets - 1
    @pets.delete(animal_name)
    shelter_instance_name.animals[animal_name] = animal_instance_name
  end
end

# Defined the class Animal
class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = []
  end
end

# Instantiated Person and Animal to test
test_person = Person.new("Laure", 24, 1,)
test_animal = Animal.new("Spot", 3, "male", "Dog")

binding.pry
