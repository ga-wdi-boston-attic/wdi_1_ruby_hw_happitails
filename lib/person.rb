class Person
	attr_accessor :name, :age, :num_pets, :num_pets, :pets
	def initialize(name, age, num_pets=0)
		@name = name
		@age = age
		@num_pets = num_pets
		@pets = {}
	end

	def accept_pet(pet)
		# Removes pet from shelter
		# Adds pet to Person
		$shelter.remove_animal(pet)
		$shelter.add_client(self)
		@pets[pet.name] = pet
		@num_pets +=  1
	end

	def get_rid_of_pet(pet)
		# Remove pet from Person
		# Add pet to Shelter
		$shelter.add_animal(pet)
		$shelter.remove_client($shelter.clients[@name])
		@pets.delete(pet.name)
	end

end
