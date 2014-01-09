class Shelter

	attr_accessor :name, :address

	def initialize
		@name = name
		@address = address
	end
end

$shelter = Shelter.new('HappiTails', '10 east 21st Street')
