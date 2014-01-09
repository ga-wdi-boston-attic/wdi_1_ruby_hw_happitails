class Shelter
	attr_accessor :name, :address, :clients, :animals, :animal, :student
	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

end
