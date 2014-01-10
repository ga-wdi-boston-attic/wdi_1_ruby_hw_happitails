require 'pry'
require_relative 'data'

#$shelter.clients['Bob'].new_pet['stacy', 'object']

$shelter.clients['Bob'].new_pet($shelter.animals['Spot'])

#puts $shelter.clients['Bob'].pets

#puts $shelter.animals

$shelter.clients['Bob'].give_pet($shelter.animals['Spot'])

#puts $shelter.clients['Bob'].pets


# here is where you can write code to try out
# your classes

#binding.pry
puts $shelter.animals

$shelter.add_animal($shelter.animals['Spot'])

puts $shelter.animals

$shelter.remove_animal($shelter.animals['Spot'])

puts $shelter.animals
