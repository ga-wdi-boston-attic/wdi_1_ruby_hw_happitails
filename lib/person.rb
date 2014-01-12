require_relative 'animal'
require 'pry'

class Person
  attr_accessor :name

  def initialize(name, person_pets=[])
    self.name  = name

    # pet_name (symbol) => Animal object
    @pets = {}
    person_pets.each do |person_pet|
      @pets[person_pet.name.to_sym] = person_pet
    end
  end

  # find a pet by animal_name
  def find_pet(animal_name)
    @pets[animal_name.to_sym]
  end

  # add an animal as a pet
  def add_pet(animal)
    @pets[animal.name.to_sym] = animal
  end

  # remove an animal as a pet
  def remove_pet(animal_name)
    @pets.delete(animal_name.to_sym)
  end

  # get all the pets
  def pets
      @pets.values
  end 

  # do we have a pet with this name?
  def pet?(animal_name)
    !!self.find_pet(animal_name)
  end

  def num_of_pets
    self.pets.size
  end

end