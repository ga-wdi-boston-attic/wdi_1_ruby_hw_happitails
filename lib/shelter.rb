class Shelter
	attr_accessor :name, :address, :clients, :animals, :animal, :student
	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end


	def add_animal(animal)
		# Add animal to the animals hash
		@animals[animal.name] = animal
	end

	def remove_animal(animal)
		@animals.delete(animal.name)
	end

	def remove_client(client)
		@clients.delete(client.name)
	end

	def add_client(client)
		# Add client to the clients hash
		@clients[client.name] = client
	end
end
