require 'pry'

class Shelter < Person

  attr_accessor  :name, :address

	def initialize(name, address)
		@name = name
		@address = address
  end
end

def all_person
	#return a list of all the people in the person class
end

def all_animals
	#returns a list of all animals in the shelter
end

def add_pet
	#adds a pet to the list of animals
end

def remove_pet
	#removes a pet from the list of animals
end

def accept_person_pet
	#takes a pet from a person
end

def give_person_pet
	#takes a pet from the shelter and gives it to a person
end

a_shelter = Shelter.new("Helpful Shelter", "456 Main St.")

# puts all_clients

binding.pry