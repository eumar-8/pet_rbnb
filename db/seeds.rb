# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.create(email: "batman@dc.com", password: "123456", name: "Batman", location: "Rødovre")
pet = Pet.new(name: "Big Pete", price: "500", species: "elephant", age: 43, description: "Super playful elephant")
pet.user = user
pet.save

user1 = User.create(email: "emilio@dc.com", password: "123456", name: "emilio", location: "Rødovre")
pet1 = Pet.new(name: "tommy", price: "150", species: "dog", age: 3, description: "Super playful dog")
pet1.user = user1
pet1.save

user2 = User.create(email: "eugenia@dc.com", password: "123456", name: "eugenia", location: "Bogota")
pet2 = Pet.new(name: "michifu", price: "200", species: "cat", age: 1, description: "Super playful cat")
pet2.user = user2
pet2.save
