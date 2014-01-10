require 'pry'

class Person

	attr_accessor  :name, :age, :number_of_pets, :pet_names

	def initialize(name, age, number_of_pets, pet_names)
		@name = name
		@age = age
		@number_of_pets = number_of_pets
		@pet_names = {}
  end
end


# def
# adds a pet name to the person's pet hash
# end

# def remove_pet
#removes a pet name from the person's hash
# end

a_person = Person.new("Sarah", "49","2",{})

binding.pry