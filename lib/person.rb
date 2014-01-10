class Person
  attr_accessor :name, :age, :number_of_pets

  def initialize (name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = {}   # {Animal.name: Animal.species}
  end
end
