class Animal

	attr_accessor  :name, :gender, :species, :toys

	def initialize(name, gender, species, toys)
		@name = name
		@gender = gender
		@species = species
		@toys = toys

def all_animal_names
 animal_names = @name
 puts "#{animal_names}"
end
  all_animal_names
end

first_animal = Animal.new("Fluffy", "male","cat","rubbermouse")
second_animal = Animal.new("Anders", "female", "aardvark", "string")

end