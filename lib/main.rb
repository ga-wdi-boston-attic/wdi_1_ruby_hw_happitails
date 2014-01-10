require 'pry'
require_relative 'data'


#Greets visitor and assigns a new or existing client
visitor = $shelter.identify_visitor

#Prompts for adoption. If yes, assigns pet's name
pets_name = $shelter.initiate_adoption

#Completes adoption process if user answers yes
visitor.adopt_pet(pets_name, visitor) if pets_name != nil


binding.pry

