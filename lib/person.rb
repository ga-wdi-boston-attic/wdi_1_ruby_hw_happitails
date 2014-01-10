class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    @pets = {}
  end

  def accept_pet # One pet is accepted by the client
    @number_of_pets = @number_of_pets + 1
  end

  def add_pet_to_list(animal_name, animal_instance_name)
    @pets[animal_name] = animal_instance_name
  end

  def give_up_pet # The pet is given up by the client
    @number_of_pets = @number_of_pets - 1
  end

  def remove_pet_from_list(animal_name)
    @pets.delete(animal_name)
  end
end
