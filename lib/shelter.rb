require_relative 'person'
require_relative 'animal'
require 'pry'
class Shelter

	attr_accessor :name, :address, :clients, :animals
	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end


	def accept_pet(name_of_pet, age, gender, species)
		@animals[name_of_pet.to_sym] = Animal.new(name_of_pet, age ,gender,species)
	end
	def accept_client(name_of_client, age, num_of_pets)
		@clients[name_of_client.to_sym] = Person.new(name_of_client, age ,num_of_pets)
	end

	def return_all_pets(name)
		puts name.animals
	end

	def return_all_clients(name)
		puts name.clients
	end

	def give_pet_client(name_of_pet, age, gender, species, name_of_client)
		@animals.delete(name_of_pet)
		@clients[name_of_client.to_sym].accept_pet
	end 
	
	def accept_pet_client(name_of_pet, age, gender, species, name_of_client)
		@clients[name_of_client.to_sym].giveup_pet
		@animals[name_of_pet.to_sym] = Animal.new(name_of_pet, age ,gender,species)
	end

end


