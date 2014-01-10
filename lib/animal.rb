
class Animal

	# Creates reader/writer for each instance variable in class Animal
	attr_accessor :name, :age, :gender, :species, :toys

	def initialize(name, age, gender, species, toys)
				@name = name
				@age = age
				@gender = gender
				@species = species
				@toys = toys
	end

	def display_details()
		puts "Name: #@name"
		puts "Age: #@age"
		puts "Gender: #@gender"
		puts "Species:  #@species"
		puts "Toys:  #@toys"
	end

	def accept_pet

	end

	def giveup_pet

	end

end

test_animal1 = Animal.new("Woofie", 9, "male", "yorkie", "ball")
puts test_animal1.display_details()