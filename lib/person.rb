class Person
  attr_accessor :name, :age, :number_of_pets, :pets

  def initialize(name, age, number_of_pets)
    @name = name
    @age = age
    @number_of_pets = number_of_pets
    # pet list is a hash with names as keys and values as animal obj
    @pets = {}
  end

  # instance methods for a person
  # accept a pet and add it to their pet list
  def add_pet(animal_name, shelter)
    # find animal object from name key
    animal = shelter.animals[animal_name]
    # add animal to person pet's list
    @pets.merge!({animal.name => animal})
    #removing animal from shelter
    shelter.animals.reject! { |key, value| key == animal.name}
  end

  # remove a pet from their list
  def remove_pet(animal_name, shelter)
    # find animal object from name key
    animal = @pets[animal_name]
    # add animal to shelter
    shelter.animals.merge!({animal.name => animal})
    # removing animal from pets hash
    @pets.reject! { |key, value| key == animal.name}
  end
end
