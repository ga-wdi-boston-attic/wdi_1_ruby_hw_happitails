# - Client:
# 	- A client should have a name.
# 	- A client should have an age.
# 	- A client should have a number of pets.
#   - A client should have a hash of pets (with pet names as keys and animal (object) as values)
#   - A client should be able to accept a pet and add it to their pets list
#   - A client should be able to give up a pet from their list


class Person
	attr_accessor :name, :age, :num_pets, :pets
	def initialize(name, age, num_pets)
		@name = name
		@age = age
		@num_pets = num_pets
		@pets = {}
	end

end
