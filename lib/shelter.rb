class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize (name, address)
    @name = name
    @address = address
    @clients = {}  #  {Shelter.clients: Person.new}
    @animals = {}  # {Shelter.animal: Animal.new}
  end
end
