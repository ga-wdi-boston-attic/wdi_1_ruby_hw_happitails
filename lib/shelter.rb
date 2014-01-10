class Shelter
	attr_accessor :name, :address, :clients, :animals
	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end


	def accept_animal
	end

	def accept_client
	end

	def return_all_pets
	end

	def return_all_clients
	end

end