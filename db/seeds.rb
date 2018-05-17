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
pet.photo = Rails.root.join("app/assets/images/elephant.jpg").open
pet.save

# pet.photo = Picture.create(image_path: "elephant.jpg")

user1 = User.create(email: "emilio@dc.com", password: "123456", name: "emilio", location: "Rødovre")
pet1 = Pet.new(name: "tommy", price: "150", species: "dog", age: 3, description: "Super playful dog")
pet1.photo = Rails.root.join("app/assets/images/dogs-background.jpg").open
pet1.user = user1
pet1.save

user2 = User.create(email: "eugenia@dc.com", password: "123456", name: "eugenia", location: "Bogota")
pet2 = Pet.new(name: "michifu", price: "200", species: "cat", age: 1, description: "Super playful cat")
pet2.photo = Rails.root.join("app/assets/images/cat.jpeg").open
pet2.user = user2

pet2.save

user3 = User.create(email: "eugenia@dc.com", password: "123456", name: "eugenia", location: "Bogota")
pet3 = Pet.new(name: "caremico", species: "fish", age: 1, description: "Super ugly but nice")
pet3.photo = Rails.root.join("app/assets/images/goldfish.jpeg").open
pet3.user = user2
pet3.save
