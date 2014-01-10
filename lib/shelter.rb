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

	#Greets visitor and returns existing client or new person
	def identify_visitor
		puts "Hello and welcome to #{$shelter.name}"
		name = prompt_input('Please enter your first name:')

		#If clients already exists, greet. If not, call add client function
		if $shelter.clients.include?(name)
			puts "Welcome back, #{name}."
			return $shelter.clients[name]
		else
			return add_client(name)
		end
	end

	#Adds client with user input, returns new client
	def add_client(name)
	age = prompt_input("How old are you, #{name}?").to_i
	number_of_pets = prompt_input('How many pets do you have now?').to_i
	puts "Thanks, #{name}! We're glad to have you with us."

	$shelter.clients[name] = Person.new(name, age, number_of_pets)
	end

	#Asks if user wants to adopt. If yes, return pets name
	def initiate_adoption
		answer = prompt_input('Would you like to adopt a pet? (y/n)').downcase
		if answer == 'y'
			prompt_input('Please enter the pet\'s name: ')
		end
	end

	#Removes and returns client with user input
	def remove_client_prompt
		name = prompt_input('To unsubscribe, please enter your first name:').capitalize
		puts "Sorry to see you go, #{name}, but hope you'll be back again."
		$shelter.clients.delete(name)
	end

end
