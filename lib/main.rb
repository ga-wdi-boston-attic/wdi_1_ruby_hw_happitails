require 'pry'
require_relative 'data'

$shelter.clients['Praggya'] = Person.new('Praggya', 34, 1)

$shelter.animals['Stella'] = Animal.new('Stella', 1, 'female', 'Cat')
$shelter.animals['Stella'].toys << 'Catnip'

binding.pry
