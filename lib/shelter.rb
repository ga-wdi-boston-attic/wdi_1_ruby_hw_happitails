class Shelter
	attr_accessor :clients, :animals, :name

	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = Hash.new
	end

	def prompt_input(prompt)
		puts prompt
		gets.chomp
	end

	#Adds new client with passed parameters
	def add_client_auto(name, age, number_of_pets)
		$shelter.clients[name] = Person.new(name, age, number_of_pets)
	end

	#Adds client with user input
	def add_client_promt
	name = prompt_input('Please enter your first name:').capitalize
	age = prompt_input("How old are you, #{name}?").to_i
	number_of_pets = prompt_input('How many pets do you have now?').to_i

	$shelter.clients[name] = Person.new(name, age, number_of_pets)
	end

	#Removes client with passed parameters
	def remove_client_auto(name)
		$shelter.clients.delete(name)
	end

	#Removes client with user input
	def remove_client_prompt
		name = prompt_input('Please enter your first name:').capitalize
		$shelter.clients.delete(name)
	end

end
