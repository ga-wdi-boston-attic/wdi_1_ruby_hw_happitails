class Person

	attr_accessor :name, :age, :number_of_pets

	def initialize
			@name = name
			@age = age
			@number_of_pets = number_of_pets
	end
end

$shelter.clients['Bob'] = Person.new('Bob', 22, 0)
$shelter.clients['Sue'] = Person.new('Sue', 31, 2)
$shelter.clients['Jil'] = Person.new('Jil', 46, 1)
$shelter.clients['Sam'] = Person.new('Sam', 87, 3)
