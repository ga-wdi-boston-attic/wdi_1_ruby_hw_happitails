# Defined the class Shelter
class Shelter
  attr_accessor :name, :address, :animals, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end
# Defined methods to return all of the animals and all of the clients
  def return_animals
    puts @animals
  end

  def return_clients
    puts @clients
  end

end
