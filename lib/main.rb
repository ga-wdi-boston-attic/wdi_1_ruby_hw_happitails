require 'pry'
require_relative 'data'

#found Read Me file confusing

#tests adding a client
$shelter.clients['Janice'] = Person.new("Janice", 27 , 10)
#tests adding a pet
$shelter.animals['Dog'] = Animal.new("Jan", 3 , "female","Dog")
#tests add_pet
$shelter.clients['Bob'].add_pet("Spot", $shelter.animals["Spot"])
#test give_up_pet
$shelter.clients['Bob'].give_up_pet("Spot")



