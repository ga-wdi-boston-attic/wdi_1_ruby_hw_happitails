class Person
	attr_accessor :name, :age, :number_of_pets, :pets
	def initialize(name, age, number_of_pets)
		@name = name
		@age = age
		@number_of_pets = number_of_pets
	  @pets = {}
	end
	def add_pet(pet_name, pet)
		@pets[pet_name] = pet
	end
end

#$shelter.clients['Bob'].add_pet("Spot", Animal.new('Spot', 3, 'male', 'Dog'))
