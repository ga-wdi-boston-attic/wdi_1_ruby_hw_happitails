class Person

	attr_accessor :name, :age, :pets

	def initialize(name, age, pets)
			@name = name
			@age = age
			@pets = pets
			@pets_hash = {}
	end
end
