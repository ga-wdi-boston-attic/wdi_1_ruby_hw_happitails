require_relative '../lib/shelter'

# Instantiate a Shelter 
$shelter = Shelter.new('HappiTails', '10 east 21st Street')

# Create people.
bob = Person.new('Bob')
sue = Person.new('Sue')
jill = Person.new('Jill')
sam = Person.new('Sam')

# Instantiate/Create animals and make them pets.
spot = Animal.new('Spot', 3, 'male', 'Dog')
spot.toys << 'Bone'
bob.add_pet(spot)

lassy = Animal.new('Lassy', 2, 'female', 'Dog')
lassy.toys << 'Frisbee'
sue.add_pet(lassy)

molly = Animal.new('Molly', 5, 'female', 'Cat')
molly.toys << 'Rope'
jill.add_pet(molly)

fido = Animal.new('Fido', 8, 'male', 'Dog')
fido.toys << 'Chew Toy'
fido.toys << "Old Shoe"
sam.add_pet(fido)

sport = Animal.new('Sport', 1, 'male', 'Dog')
sport.toys << 'Treats'
sam.add_pet(sport)

# Register clients
$shelter.register_client(bob)
$shelter.register_client(sue)
$shelter.register_client(sam)

# check pets, and their one toy, into the shelter
$shelter.check_in(bob, spot)
puts "Checkin #{bob.name}'s pet #{spot.name}"

$shelter.check_in(jill, molly)
puts "Checkin #{jill.name}'s pet #{molly.name}"

$shelter.check_in(sam, fido)
puts "Checkin #{sam.name}'s pet #{fido.name}"

checked_in_str = $shelter.checked_in?(sam.name, fido.name) ? "checked in" : "not checked in"
puts "Sam's pet fido is " <<  checked_in_str

checked_in_str = $shelter.checked_in?(jill.name, molly.name) ? "checked in" : "not checked in"
puts "Jill's pet molly is " << checked_in_str

$shelter.check_out(sam, fido)
checked_in_str = $shelter.checked_in?(sam.name, fido.name) ? "checked in" : "not checked in"
puts "Sam's pet fido is " << checked_in_str

