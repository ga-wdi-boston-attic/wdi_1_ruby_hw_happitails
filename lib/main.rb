require 'pry'
require_relative 'data'

#found Read Me file confusing

#tests adding a client
$shelter.clients['Janice'] = Person.new("Janice", 27 , 10)
#tests adding a animal
$shelter.animals['Dog'] = Animal.new("Jan", 3 , "female","Dog")
#shelter returns all clients by using
$shelter.clients
#shelter returns all animals by using
$shelter.animals
#tests add_pet ( allows shelter to give pet to client - client adds pet)
$shelter.clients['Bob'].add_pet("Spot", $shelter.animals["Spot"])
#done to diffentiate Bob's Spot
$shelter.clients["Bob"].pets["Spot"].age = 6
#allows shelter to "take back a pet"
$shelter.add_pet("Spot", $shelter.clients["Bob"].pets["Spot"] )
#test give_up_pet (client gives it up)
$shelter.clients['Bob'].give_up_pet("Spot")





