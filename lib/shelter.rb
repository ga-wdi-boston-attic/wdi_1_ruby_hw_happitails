class Shelter
  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address, clients={}, animals={})
    @name = name
    @address = address
    @clients = clients
    @animals = animals
  end

  def add_client(client) # add client object
    @clients[client.name] = client
  end

  def bye_client(client) # pass string of client's name
    @clients.delete(client)
  end

  def add_animal(animal) # add animal object
    @animals[animal.name] = animal
  end

  def bye_animal(animal) # pass string of animal's name
    @animals.delete(animal)
  end

end
