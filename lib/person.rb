class Person
	attr_accessor :name, :number_of_pets, :pets

	#Initialize a person
	def initialize(name, age, number_of_pets)
		@name = name
		@age = age
		@number_of_pets = number_of_pets
		@pets = Hash.new
	end

	#Removes a pet from shelter's animal hash and add's person's pet hash
	def adopt_pet(pet_name, client)
		pets[pet_name] = $shelter.animals.delete(pet_name)
		@number_of_pets += 1
	end

	#Removes a pet from person's pet hash and adds to shelter's animal hash
	def give_up_pet(pet_name, client)
		$shelter.animals[pet_name] = pets.delete(pet_name)
		@number_of_pets -= 1
	end

end
