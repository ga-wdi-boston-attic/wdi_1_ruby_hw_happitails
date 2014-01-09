class Person
	attr_accessor :name, :age, :num_pets, :num_pets
	def initialize(name, age, num_pets)
		@name = name
		@age = age
		@num_pets = num_pets
		@pets = {}
	end

	def add_pet(pet)
		# @pets.merge!( (pet.name).to_sym => pet )
	end

	def remove_pet(pet)

	end
end
