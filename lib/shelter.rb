require_relative 'person'
require 'pry'

class Shelter
  attr_accessor :name, :address

  def initialize(name, address)  
    self.name = name
    self.address = address

    # registered clients
    @clients = {}

    # checked in pets
    # checked_in_pets['client_name-pet_name'] = pet
    @checked_in_pets = {}
  end 

  def register_client(client)
    @clients[client.name] = client
  end

  def find_client(client_name)
    @clients[client_name]
  end

  def check_in(client, pet)
    #TODO: may want to add a check to see if the client is registered?
    @checked_in_pets["#{client.name}-#{pet.name}"] = pet
  end

  def check_out(client, pet)
    if(self.checked_in?(client.name, pet.name))
      @checked_in_pets.delete("#{client.name}-#{pet.name}")
    end
  end
  
  def checked_in?(client_name, pet_name)
    !!@checked_in_pets["#{client_name}-#{pet_name}"]
  end

end