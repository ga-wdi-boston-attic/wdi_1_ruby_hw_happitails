class Shelter
	attr_accessor :name, :address, :clients, :animals

	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end
	def add_pet(pet_name, pet)
		@animals[pet_name] = pet
	end
end


