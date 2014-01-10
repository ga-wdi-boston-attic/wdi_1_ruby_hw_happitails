require 'pry'
require_relative 'data'

# code goes here, whoo!

$shelter = Shelter.new('HappiTails', '10 east 21st Street')
$shelter.clients['Bob'] = Person.new('Bob', 22, 0)
$shelter.clients['Sue'] = Person.new('Sue', 31, 2)
$shelter.clients['Jil'] = Person.new('Jil', 46, 1)
$shelter.clients['Sam'] = Person.new('Sam', 87, 3)

$shelter.animals['Spot'] = Animal.new('Spot', 3, 'male', 'Dog')
$shelter.animals['Spot'].toys << 'Bone'
$shelter.animals['Lassy'] = Animal.new('Lassy', 2, 'female', 'Dog')
$shelter.animals['Lassy'].toys << 'Frisbee'
$shelter.animals['Molly'] = Animal.new('Molly', 5, 'female', 'Cat')
$shelter.animals['Molly'].toys << 'Rope'
$shelter.animals['Fido'] = Animal.new('Fido', 8, 'male', 'Dog')
$shelter.animals['Fido'].toys << 'Chew Toy'
$shelter.animals['Sport'] = Animal.new('Sport', 1, 'male', 'Dog')
$shelter.animals['Sport'].toys << 'Treats'

binding.pry
