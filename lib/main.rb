require 'pry'
require_relative 'data'

# here is where you can write code to try out
# your classes
def shelter_management_menu(shelter)
  puts "Welcome to #{shelter.name}. Enter your choice:"
  puts "\t1. Add client"
  puts "\t2. Remove client"
  puts "\t3. Add animal to shelter. (not from client)"
  puts "\t4. Remove animal from shelter. (not giving to client; animal died, etc)"
  puts "\t5. Accept animal from client."
  puts "\t6. Release animal to client."
  print "Your choice? "

  user_choice = gets.chomp.to_i

  case user_choice
  when 1
    add_menu(shelter, :clients)
  when 2
    bye_menu(shelter, :clients)
  when 3
    add_menu(shelter, :animals)
  when 4
    bye_menu(shelter, :animals)
  when 5
    client_action(shelter, :drop_off)
  when 6
    client_action(shelter, :pick_up)
  end
end

# Reusable method to print what clients or animals are at shelter, or animals client has
def whats_left(object, type)
  puts "\nCurrent #{type} are: "
  object.send(type).each do |k,v|
    puts "\t#{k}"
  end
end

def client_action(shelter, action) # Action is :pick_up or :drop_off
  whats_left(shelter, :clients)
  # Do some string formatting :pick_up --> pick up, etc
  print "Which client is going to #{action.to_s.gsub('_', " ")}? "
  which_client = gets.chomp

  # object is where to check for pets (client's or shelter's?)
  # If dropping off object = client object, so whats_left gives that client's pets
  object = (action == :drop_off && shelter.clients[which_client]) || shelter

  # Now whats_left with object give us client's animals if dropping off, shelter's if picking_up
  whats_left(object, :animals)
  print "Which animal is #{which_client} going to #{action.to_s.gsub('_', " ")}? "
  which_animal = gets.chomp

  # Now find the client, send the action (pick_up/drop_off and which_animal)
  shelter.clients[which_client].send(action, which_animal, shelter)
  puts "#{which_client} #{action.to_s.gsub('_', "s ")} #{which_animal}."
end

# This just gets rid of a client or animal (no client <--> shelter transfer)
def bye_menu(shelter, type) # Receive type as a symbol, :clients or :animals
  whats_left(shelter, type)

  print "#{type.capitalize} to remove? "
  name = gets.chomp

  puts "Removed #{shelter.send(type).delete(name).name}"

  whats_left(shelter, type)
end

# This allows user to specify parameters to create a new Person or Animal instance
# and then add it as a client or animal in the shelter
def add_menu(shelter, type) # Receive type as :clients or :animals
  puts "Enter the following as a comma-separated, no-space list:"

  # Which instance vars to ask for
  vars_to_get = shelter.send(type).first[1].instance_variables
                  .map{|x| x[1..-1]} # This map turns '@name' into 'name'
  # Pop off the last var b/c it's toys/pets (don't need in creating instances)
  vars_to_get.pop
  puts vars_to_get.join(',')

  new_thing = gets.chomp.split(',') # Get array of their choices
  new_thing = new_thing.map{|x| x = (x =~ /\d/ && x.to_i) || x } # Map the numbers to_i, leave the strings

  # Now new_thing is an array of the parameters we need to make a new Person or Animal
  if type == :clients
    shelter.send(:add_client, Person.new(*new_thing))
  else
    shelter.send(:add_animal, Animal.new(*new_thing))
  end

  whats_left(shelter, type)
end

shelter_management_menu($shelter)
binding.pry
