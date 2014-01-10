class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    @pets = {}
  end
# Defined a method that will add an adopted pet to a person's number of pets and pets hash
# The method will simultaneously remove that same pet from the shelter
  def adopt_pet_from_shelter(animal_name, animal_instance_name, shelter_instance_name)
    @number_of_pets = @number_of_pets + 1
    @pets[animal_name] = animal_instance_name
    shelter_instance_name.animals.delete(animal_name)
  end

# Defined a method that will remove a pet from a person's number of pets and pets hash
# The method will simultaneously add that same pet to the shelter's animal hash
  def give_pet_up_to_shelter(animal_name, animal_instance_name, shelter_instance_name)
    @number_of_pets = @number_of_pets - 1
    @pets.delete(animal_name)
    shelter_instance_name.animals[animal_name] = animal_instance_name
  end
end
