class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize(name, address)
		@name = name
		@address = address
		@clients = {}
		@animals = {}
	end
end

