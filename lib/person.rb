
class Person
		# Creates reader/writer for each instance variable in class Shelter
		attr_accessor :name, :age, :number_pets

		# Establishes the default properties for all Shelter class objects
		def initialize(name, age, number_pets)
      @name = name
      @age = age
      @number_pets = number_pets
   	end

   	def display_details
			puts "Name: #@name"
			puts "Age: #@age"
			puts "Number of Pets: #@number_pets"
	end

end









# Instantiate clients.  Insert them into the shelter's clients hash
# from data.rb: $shelter.clients['Bob'] = Person.new('Bob', 22, 0)

# class Person
# 	# Creates reader/writer for each instance variable in class Person
# 	attr_accessor :name, :age, :number_pets

# 	def initialize(name, age, number_pets)
# 				@name = name
# 				@age = age
# 				@number_pets = number_pets
# 	end

# 	def display_details()
# 		puts "Name: #@name"
# 		puts "Age: #@age"
# 		puts "Number of Pets: #@number_pets"
# 	end

# 	def accept_pet

# 	end

# 	def giveup_pet

# 	end

# end


test_person1 = Person.new("Jack", 35, 1)
# test_person2 = Person.new("Tom", 31, 4)
# test_person3 = Person.new("Bill", 78, 1)

puts test_person1.display_details