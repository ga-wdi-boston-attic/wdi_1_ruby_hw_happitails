class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize(name, address)
		@name = name
		@address = address

		@clients = { }
		@animals = { }
	end

	def show_clients
		puts @clients
	end

	def show_animals
		puts @animals
	end

	def add_animal(pet_name, age, gender, species)
		@animals[pet_name.to_sym] = Animal.new(pet_name, age, gender, species)
	end

	def remove_animal(pet_name)
		@animals.delete(pet_name.to_sym)
	end

	def add_client(client_name, age, number_of_pets)
		@clients[client_name.to_sym] = Person.new(name, age, number_of_pets)
	end

	def remove_client(client_name)
		@clients.delete(client_name.to_sym)
	end

	def give_animal_to_client(pet_name, age, gender, species, client_name)
		@animals.delete(pet_name.to_sym)
		client_name.add_pet
	end

	def accept_animal_from_client(pet_name, client_name)
		@animals[pet_name.to_sym] = Animal.new(pet_name, age, gender, species)
		client_name.remove_pet
	end

end
