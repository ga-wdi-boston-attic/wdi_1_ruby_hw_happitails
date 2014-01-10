class Shelter
  attr_accessor :name, :address, :animals, :clients

  def initialize (name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end

  def return_animals
    puts @animals
  end

  def return_clients
    puts @clients
  end

end
