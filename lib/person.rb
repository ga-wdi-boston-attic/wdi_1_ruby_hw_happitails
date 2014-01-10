class Person

  attr_accessor :name, :age, :num_pets, :pets

  def initialize(name, age, num_pets, pets={})
    @name = name
    @age = age
    @num_pets = num_pets
    @pets = pets
  end

# Methods to exchange between person and shelter
  def pick_up(animal_name, shelter)
    my_animal = shelter.animals.delete(animal_name) # Delete animal from shelter and return it
    @pets[animal_name] = my_animal # Add to person's pets
    @num_pets += 1
  end

  def drop_off(animal_name, shelter)
    my_animal = @pets.delete(animal_name) # Delete animal from person and return it
    shelter.animals[animal_name] = my_animal # Add to shelter
    @num_pets -= 1
  end

# Methods to directly add or remove pets from person (without exchanging with shelter)
  def add_animal(pet) # Pass pet object
    @pets[pet.name] = pet # Add pet to client's hash
  end

  def bye_animal(pet) # Pass String of pet's name
    @pets.delete(pet) # Remove pet from client's hash
  end

  alias :animals :pets
end
