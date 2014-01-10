require 'pry'
require_relative 'data'

# here is where you can write code to try out
# your classes
def shelter_management_menu(shelter)
  puts "Welcome to #{shelter.name}. Enter your choice:"
  puts "\t1. Add client"
  puts "\t2. Remove client"
  puts "\t3. Add animal"
  puts "\t4. Remove animal"
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
  end
end

def bye_menu(shelter, type) # Receive type as a symbol, :clients or :animals
  puts "\nCurrent #{type} are: "
  shelter.send(type).each do |k,v|
    puts "\t#{k}"
  end

  print "#{type.capitalize} to remove? "
  name = gets.chomp

  puts "Removed #{shelter.send(type).delete(name).name}"
  puts "Current #{type} are: "
  shelter.send(type).each do |k,v|
    puts "\t#{k}"
  end
end

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

  if type == :clients
    shelter.send(:add_client, Person.new(*new_thing))
  else
    shelter.send(:add_animal, Animal.new(*new_thing))
  end

  puts "\nCurrent #{type} are: "
  shelter.send(type).each do |k,v|
    puts "\t#{k}"
  end
end

shelter_management_menu($shelter)
