class Animal
	attr_accessor :name, :species, :toys

	def initialize(name, age, gender, species)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@toys = []
	end

end
