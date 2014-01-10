require 'pry'
require_relative 'data'

# here is where you can write code to try out
# your classes

my_person = Person.new("Mike", 27, 0)
my_pet = Animal.new("Chester", 13, "Male", "Golden Retriever")

puts ""
puts "Would you like to purchase a pet?"
puts ""
response = gets.chomp
if response.upcase != "YES"
	puts "Then Scram!"
	exit
end

puts "Great! Which pet would you like?"
puts ""
sleep(0.5)

$shelter.animals.each do |name, object|
	puts "#{name} is a #{object.species}"
	sleep(0.5)
end

puts ""
puts "Type the name of the pet you would like"
puts ""
desired_pet = gets.chomp

pet = $shelter.animals[desired_pet]

pet_name = pet.name
pet_type = pet.species


puts "You picked the right one! #{pet_name} is an excellent #{pet_type}!"
puts ""
sleep(0.5)

puts "Before you go, let me get some information from you"
sleep(0.5)

puts "What is your name?"
client_name = gets.chomp
sleep(0.5)

puts "What is your age?"
client_age = gets.chomp.to_i
sleep(0.5)

new_client = Person.new(client_name, client_age)

# Have the client accept the pet
new_client.accept_pet(pet)

sleep(1)
puts ""
sleep(0.5)
puts ""
sleep(0.5)
puts ""
sleep(0.5)
puts "ANNOUCEMENT PEOPLE OF THE SHELTER!!!"
sleep(0.5)
puts ""
puts "#{new_client.name} has just purchased #{pet_name}!"

sleep(0.5)
puts ""
puts "Our current list of animals is:"
puts ""
$shelter.animals.each { |name, object| puts "#{name}: #{object.species}" }

sleep (0.5)
puts ""
puts "Our current list of clients is:"
$shelter.clients.each { |name, object| puts name }

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
sleep(0.5)
puts ""
sleep(0.5)
puts ""
sleep(0.5)
puts "ANNOUCEMENT PEOPLE OF THE SHELTER!!!"
sleep(0.5)
puts ""
puts "#{new_client.name} has just returned #{pet_name}!"

sleep(0.5)
puts ""
puts "Our current list of animals is:"
puts ""
$shelter.animals.each { |name, object| puts "#{name}: #{object.species}" }

puts ""
puts ""

# # List of the shelter's animals
# puts "List of the shelter's current animals"
# $shelter.animals.each { |name, object| puts name }
# puts ""

# # List of the shelter's clients
# puts "List of the shelter's current clients"
# $shelter.clients.each { |name, object| puts name }
# puts ""


# # Add an animal to the shelter.
# puts "Add 'Chester' and print a list of the shelter's current animals"
# $shelter.add_animal(my_pet)
# $shelter.animals.each { |name, object| puts name }
# puts ""

# # Have a person accept a pet
# # The shelter should remove the pet and include the person as a client.
# puts "Person accepts pet from the Shelter"
# my_person.accept_pet(my_pet)
# puts "Animals.."
# $shelter.animals.each { |name, object| puts name }
# puts ""
# puts "Clients..."
# $shelter.clients.each { |name, object| puts name }
# puts ""
# puts "Person's pet list"
# my_person.pets.each { |key, value| puts key }
# puts ""

# # Have the person get rid of the pet
# puts "Person gave pet back to shelter."
# puts "Shelter's current animal list:"
# my_person.get_rid_of_pet(my_pet)
# $shelter.animals.each { |name, object| puts name }
