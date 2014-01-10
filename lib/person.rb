class Person

	attr_accessor :name, :age, :pets

	def initialize(name, age, pets)
			@name = name
			@age = age
			@pets = pets
	end
end

# pets = Hash.new #{ |pets,name| pets[name] = species }

# Sue = Hash.new
# Sue["Fluffy"] = "rabbit"
# Sue["Spike"]

# # def adding_pets_to_client_hash
# 	Sue.store(:Fluffy, "rabbit")
# 	Sue.store(:Spike, "spider")
# 	Jil.store(:Fuzzy, "cat")
# 	Sam.store(:Fifi, "dog")
# 	Sam.store(:Stella, "cat")
# 	Sam.store(:Chestnut, "horse")

# puts pets

