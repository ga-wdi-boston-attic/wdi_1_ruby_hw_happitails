class Person
	attr_accessor :name, :age, :num_of_pets, :hash_of_pets
	def initialize(name, age, num_of_pets)
		@name = name
		@age = age
		@num_of_pets = num_of_pets
		@hash_of_pets = {}
	end
end
