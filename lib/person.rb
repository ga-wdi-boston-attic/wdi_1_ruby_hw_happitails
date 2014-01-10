class Person
	attr_accessor :name, :age, :num_of_pets, :pets
	def initialize(name, age, num_of_pets)
		@name = name
		@age = age
		@num_of_pets = num_of_pets
		@pets = {}
	end

	def accept_pet
	end
	def giveup_pet
	end
end