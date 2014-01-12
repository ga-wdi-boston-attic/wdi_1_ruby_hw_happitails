# HappiTails

###Type:
- Group Homework/Lab

###Time Required:
- 4/5 hours
- overnight

###Prerequisites:
- Ruby
  - Objects/Classes
  - Initializer
  - Accessors
  - gets.chomp
  - Multi-file projects ('require')

###Objectives:
- Practice defining classes and their relationships.

###Explanation
- You are the manager at HappiTails animal shelter. You need to manage your
shelter by storing and manipulating information about persons and animals.
- Make git commits as you finish each phase, so you can see the history

###Specification:
##### Class/Object Specs:
- Animal:
	- An animal should have a name.
	- An animal should have an age.
	- An animal should have a gender.
	- An animal should have a species (dog, cat, ...).
	- An animal may have multiple toys.

- Person:
	- Must have a name.
	- May have pets.
  - May be given an animal as a pet.
  - May give up a pet given the pet name.
  - Will give you a pet given it's name.
  - Will give you a list of their pets.
  - Will tell you it they have a pet with a name.
  - Will tell you the number of pets they have.

- Shelter:
  - The shelter should have a name.
  - The shelter should have an address.
  - The shelter can register a client/person.
  - The shelter can check in a pet given a client and a pet.
  - The shelter can check out a pet given a client and pet.
  - The shelter can deterime if a pet is checked given the client's name and the pet's name.

#####Phase 1
- bundle install

#####Phase 2
- Define an Animal.
- Run and pass it's specification/test, (rspec spec/animal_spec.rb)

#####Phase 3
- Define a Person.
- Run and pass it's specification/test, (rspec spec/person_spec.rb)

#####Phase 4
- Define a Shelter it's specification/test.
- Run and pass it's specification/test, (rspec spec/shelter_spec.rb)

#####Extra 
- Add a text-interface that
  prompts user for input and PASSES the input information to 
  the functions they have written. This lab should stress purely
  functional programming, and if an interface is created, input
  and output should not be mixed in with the class functions.





