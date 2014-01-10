require 'pry'
require_relative 'animal'

class Person
	attr_accessor :name, :age, :num_of_pets, :pets
	def initialize(name, age, num_of_pets)
		@name = name
		@age = age
		@num_of_pets = num_of_pets
		@pets = {}
	end

	def accept_pet(name_of_pet, age ,gender, species)
		@pets[name_of_pet.to_sym] = Animal.new(name_of_pet, age ,gender,species)
		@name_of_pet += 1
	end
	def giveup_pet(name_of_pet, age ,gender, species)
		@pets.delete(name_of_pet)
		@name_of_pet -= 1
	end
end
