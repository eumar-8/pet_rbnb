# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.first
User.destroy_all
Pet.destroy_all

user = User.new(email: "batman@hot.com", password: "123456", name: "Batman", location: "Rødovre")
user.photo = Rails.root.join("app/assets/images/batman.jpg").open
user.save
pet = Pet.new(name: "Big Pete", price: "500", species: "elephant", age: 43, description: "Super playful elephant")
pet.photo = Rails.root.join("app/assets/images/elephant.jpg").open
pet.user = user
pet.save

# pet.photo = Picture.create(image_path: "elephant.jpg")

user1 = User.create(email: "emilio@hot.com", password: "123456", name: "emilio", location: "Rødovre")
user1.photo = Rails.root.join("app/assets/images/emilio.jpg").open
user1.save
pet1 = Pet.new(name: "tommy", price: "150", species: "dog", age: 3, description: "Super playful dog")
pet1.photo = Rails.root.join("app/assets/images/dogs-background.jpg").open
pet1.user = user1
pet1.save

user2 = User.create(email: "eugenia@hot.com", password: "123456", name: "eugenia", location: "Bogota")
pet2 = Pet.new(name: "michifu", price: "200", species: "cat", age: 1, description: "Super playful cat")
user2.photo = Rails.root.join("app/assets/images/eugenia.jpg").open
user2.save
pet2.photo = Rails.root.join("app/assets/images/cat.jpeg").open
pet2.user = user2

pet2.save

user3 = User.create(email: "eugenia@dc.com", password: "123456", name: "eugenia", location: "Bogota")
user3.photo = Rails.root.join("app/assets/images/profile.jpg").open
user3.save
pet3 = Pet.new(name: "caremico", species: "fish", age: 1, description: "Super ugly but nice")
pet3.photo = Rails.root.join("app/assets/images/goldfish.jpeg").open
pet3.user = user3
pet3.save

user4 = User.create(email: "marta@hot.com", password: "123456", name: "marta", location: "rødovre")
user4.photo = Rails.root.join("app/assets/images/marta.jpg").open
user4.save
pet4 = Pet.new(name: "fofo", price: "100", species: "cat", age: 2, description: "Super playful cat, he is a gloton!")
pet4.photo = Rails.root.join("app/assets/images/cat1.jpg").open
pet4.user = user4
pet4.save


user5 = User.create(email: "simon@hot.com", password: "123456", name: "simon", location: "nørrevro")
user5.photo = Rails.root.join("app/assets/images/simon.jpg").open
user5.save
pet5 = Pet.new(name: "tontin", price: "500", species: "cat", age: 2, description: "Super playful cat, he is a gloton!")
pet5.photo = Rails.root.join("app/assets/images/cat2.jpg").open
pet5.user = user5
pet5.save

user6 = User.create(email: "clara@hot.com", password: "123456", name: "clara", location: "skagen")
user6.photo = Rails.root.join("app/assets/images/batman.jpg").open
user6.save
pet6 = Pet.new(name: "molin", price: "300", species: "cat", age: 5, description: "siete vidas tiene un gato!")
pet6.photo = Rails.root.join("app/assets/images/cat3.jpg").open
pet6.user = user6
pet6.save
