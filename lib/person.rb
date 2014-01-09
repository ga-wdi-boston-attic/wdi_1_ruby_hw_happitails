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
  def add_pet(animal)
    # add animal to person pet's list
    @pets.merge!({animal.name.to_sym => animal})
    #removing animal from shelter
    $shelter.animals.reject! { |key, value| key == animal.name}
  end

  # remove a pet from their list
  def remove_pet(animal)
    # add animal to shelter
    $shelter.animals.merge!({animal.name.to_sym => animal})
    # removing animal from pets hash
    @pets.reject! { |key, value| key == animal.name.to_sym}
  end
end
