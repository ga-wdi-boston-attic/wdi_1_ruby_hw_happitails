require 'pry'
require_relative 'data'

#found Read Me file confusing

#tests adding a client
$shelter.clients['Janice'] = Person.new("Janice", 27 , 10)
#tests adding a pet
$shelter.animals['Dog'] = Animal.new("Jan", 3 , "female","Dog")
#tests add_pet
$shelter.clients['Bob'].add_pet("Spotty", Animal.new('Spotty', 3, 'male', 'Dog'))
# considered making a transfer pet method - was unsure how to proceed
# $shelter.transfer_pet('Bob', 'Spot')




binding.pry
