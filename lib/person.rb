class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize (name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    @pets = {}
  end

  def accept_pet # The pet is accepted by the client and removed from the shelter

  end

  def give_up_pet # The pet is given up and returned to the shelter

  end
end
