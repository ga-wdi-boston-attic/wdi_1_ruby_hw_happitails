require 'pry'
require_relative 'data'

# here is where you can write code to try out
# your classes
def space
	puts ""
end

def user_input(message)
	puts message
	gets.chomp
end

def display_animals(shelter)
	shelter.animals.each { |name, object| puts "#{name} is a #{object.species}" }
end

def display_clients(shelter)
	shelter.clients.each { |name, object| puts name }
end

my_person = Person.new("Mike", 27, 0)
my_pet = Animal.new("Chester", 13, "Male", "Golden Retriever")

space
response = user_input("Would you like to purchase a pet?")
space

if response.upcase != "YES"
	puts "Then Scram!"
	exit
end

puts "Great! Which pet would you like?"
space
sleep(0.5)

display_animals($shelter)
# $shelter.animals.each do |name, object|
# 	puts "#{name} is a #{object.species}"
# 	sleep(0.2)
# end

space
desired_pet = user_input("Type the name of the pet you would like")
space


pet = $shelter.animals[desired_pet]

pet_name = pet.name
pet_type = pet.species


puts "You picked the right one! #{pet_name} is an excellent #{pet_type}!"
space
sleep(0.5)

puts "Before you go, let me get some information from you"
sleep(0.5)

client_name = user_input("What is your name?")
sleep(0.5)
space

client_age = user_input("What is your age?")
sleep(0.5)

new_client = Person.new(client_name, client_age)

# Have the client accept the pet
new_client.accept_pet(pet)

space
puts ""

space
puts ""

space
puts ""

space
puts "ANNOUCEMENT PEOPLE OF THE SHELTER!!!"

space
puts ""
puts "#{new_client.name} has just purchased #{pet_name}!"

space
puts ""
puts "Our current list of animals is:"
puts ""

display_animals($shelter)
# $shelter.animals.each { |name, object| puts "#{name}: #{object.species}" }

sleep (0.5)
puts ""
puts "Our current list of clients is:"
display_clients($shelter)
#$shelter.clients.each { |name, object| puts name }

puts ""
sleep(0.5)
puts "If you would like to return #{pet_name} type Return. Otherwise, I'll just go eff myself."
puts ""
response = gets.chomp

if response.upcase != 'RETURN'
	puts ""
	puts "Guess I'll go eff myself then..."
	puts ""
	exit
end

sleep(0.5)

puts "Gee wiz! You want to return this thing already??"
sleep(0.5)
puts "Well, okay... Guess we'll take 'em back"

new_client.get_rid_of_pet(pet)

sleep(1)
puts ""
sleep(0.2)
puts ""
sleep(0.2)
puts ""
sleep(0.2)
puts "ANNOUCEMENT PEOPLE OF THE SHELTER!!!"
sleep(0.5)
puts ""
puts "#{new_client.name} has just returned #{pet_name}!"

sleep(0.5)
puts ""
puts "Our current list of animals is:"
puts ""
display_animals($shelter)
#$shelter.animals.each { |name, object| puts "#{name}: #{object.species}" }
puts ""
puts "Our current list of clients is:"
puts ""
display_clients($shelter)
space
puts "(p.s. screw #{client_name}!)"
space
