
class Shelter
		# Creates reader/writer for each instance variable in class Shelter
		attr_accessor :name, :address, :clients, :animals

		# Establishes the default properties for all Shelter class objects
		def initialize(name, address)
			@name = name
			@address = address
		end

		# def return_all_clients
		# 	clients.each { |client| puts client }
		# end

		# def return_all_animals
		# 	animals.each { |animal| puts animal }
		# end

		# def accept_animal
		# end

		# def accept_client
		# end

		# def transfer_pet
		# end

		# def accept_pet
		# end

end