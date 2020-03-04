# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying users, cities, categories and places."

Place.destroy_all
List.destroy_all
City.destroy_all
Category.destroy_all
User.destroy_all

puts "Creating users"
user1 = User.create(username: "firstuser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')
user2 = User.create(username: "seconduser", email: 'secondemail@gmail.com', bio: "I am the second amazing user", password: '123456')
user3 = User.create(username: "thirduser", email: 'thirdemail@gmail.com', bio: "I am the third amazing user", password: '123456')
user4 = User.create(username: "fourthuser", email: 'fourthtemail@gmail.com', bio: "I am the fourth amazing user", password: '123456')

puts "Creating cities"
madrid = City.create(name: 'madrid')
tokyo = City.create(name: 'tokyo')
london = City.create(name: 'london')



puts "Creating lists"
list1 = List.create(user: user1, city: madrid)

puts "Creating Categories"
food = Category.create(name: 'Food & Drinks')
sight = Category.create(name: 'Sights & attractions')
entertainment = Category.create(name: 'Entertainment')


puts "Creating places for London"
place1 = Place.create(name: 'Casa Cruz', address: '123A Clarendon Rd, Notting Hill, London W11 4JG, United Kingdom', city_id: london.id, category_id: food.id, average_rating: 5)
place2 = Place.create(name: 'London Eye', address: "The Queen's Walk, Bishop's, London SE1 7PB, United Kingdom", city_id: london.id, category_id: sight.id, average_rating: 3)
place3 = Place.create(name: 'Natural History Museum', address: "Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom", city_id: london.id, category_id: entertainment.id, average_rating: 4)
place4 = Place.create(name: "The Anglesea Arms", address: "15 Selwood Terrace, South Kensington, London SW7 3QG, United Kingdom", city_id: london.id, category_id: food.id, average_rating: 4)
