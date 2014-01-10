class Shelter
	attr_accessor :clients, :animals

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

	def accept_client
		puts 'We need some basic information to add you to our system.'
		name = prompt_input('Please enter your first name:').capitalize
		age = prompt_input("How old are you, #{name}?").to_i
		number_of_pets = prompt_input('How many pets do you have now?').to_i

		$shelter.clients[name] = Person.new(name, age, number_of_pets)
		puts "Thanks, #{name}! We're glad to have you with us."
	end

	def remove_client
		name = prompt_input('Please enter your first name:').capitalize
		$shelter.clients.delete(name)
		puts "Sorry to see you go, #{name}, but hope you'll be back again."
	end





end
