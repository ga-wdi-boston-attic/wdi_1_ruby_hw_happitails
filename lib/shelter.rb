class Shelter
	attr_accessor :name, :address, :clients, :animals
	def initialize (name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end
	def give_pet(pet, client)
		@clients[client].hash_of_pets[pet] = @animals[pet]
		@animals.delete(pet)
		@clients[client].num_of_pets += 1
	end
	def accept_pet(pet, client)
		@animals[pet] = @clients[client].hash_of_pets[pet]
		@animals[pet] = @clients[client].hash_of_pets[pet]
		@clients[client].hash_of_pets.delete(pet)
		@clients[client].num_of_pets -= 1
	end
	def get_user_input
		a = []
		puts "Would you like to give pets to clients(type '1') or accept pets from them(type '2')?"
		command = gets.chomp.to_i
		puts "Please input the pet name..."
		pet = gets.chomp
		puts "Please input the client name..."
		client = gets.chomp
		return a.push(pet, client, command)
	end
	def get_user_output(a)
		if a[2] == 1
			give_pet(a[0], a[1])
			puts "Done! Has given pet #{a[0]} to #{a[1]}."
		else a[2] == 2
			accept_pet(a[0], a[1])
			puts "Done! pet #{a[0]} from #{a[1]} has been given to shelter."
		end
	end
	def show_shelter_animal
		puts @animals.keys
	end
end
