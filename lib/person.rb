require 'pry'

class Person

	attr_accessor :name, :age, :number_of_pets, :pets

	def initialize(name, age, number_of_pets)
		@name = name
		@age = age
		@number_of_pets = number_of_pets

		@pets = { } # @pets is the name of the hash, keys will be pet names, values are
	end

	def add_pet(pet_name, age, gender, species)
		@pets[pet_name.to_sym] = Animal.new(pet_name, age, gender, species)
		@number_of_pets += 1

	end

	def remove_pet(pet_name)
		@pets.delete(pet_name.to_sym)
		@number_of_pets -= 1
	end

end

