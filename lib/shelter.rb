class Shelter
	attr_accessor :name, :age, :number, :clients, :pets
	def initialize(name, age, number, clients, pets)
		@name = name
		@age = age
		@clients[] = clients
		@pets[] = pets
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