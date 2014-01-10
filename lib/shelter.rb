# - Shelter:
#   - The shelter should have a name.
#   - The shelter should have an address.
# 	- The shelter should be able to return all the clients.
# 	- The shelter should be able to return all the animals.
#   - The shelter should be able to accept an animal (add to it's list).
#   - The shelter should be able to accept a client (add to it's list).


class Shelter
	attr_accessor :name, :address, :clients, :animals

	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end

	def add_animal(pet)
		@animals[pet.name.to_sym] = pet
	end

	def remove_animal(pet)
		@animals.reject {|k , v | k == pet.name}
	end


end
