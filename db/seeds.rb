# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.firs
require 'open-uri'

puts "Destroying users, cities, categories and places."

Place.destroy_all
List.destroy_all
City.destroy_all
Category.destroy_all
User.destroy_all

file1 = URI.open("https://i.imgur.com/uxzGHFY.jpg")
file2 = URI.open("https://i.imgur.com/u3dwSdr.jpg")

puts "Creating users"
user1 = User.create(username: "firstuser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')
user1.photo.attach(io: file1, filename: "img1.jpg", content_type: "image/jpg")
user1.save!
user2 = User.new(username: "seconduser", email: 'secondemail@gmail.com', bio: "I am the second amazing user", password: '123456')
user2.photo.attach(io: file2, filename: "img2.jpg", content_type: "image/jpg")
user2.save!
user3 = User.create(username: "thirduser", email: 'thirdemail@gmail.com', bio: "I am the third amazing user", password: '123456')
user4 = User.create(username: "fourthuser", email: 'fourthemail@gmail.com', password: '123456')

puts "Creating cities"
madrid = City.create(name: 'madrid')
tokyo = City.create(name: 'tokyo')
london = City.create(name: 'london')

puts "Creating lists"
list1 = List.create(user: user1, city: madrid, is_wishlist: false)

puts "Creating Categories"
food = Category.create(name: 'Food & Drinks')
sight = Category.create(name: 'Sights & attractions')
entertainment = Category.create(name: 'Entertainment')


puts "Creating places for London"
place1 = Place.create(name: 'Casa Cruz', address: '123A Clarendon Rd, Notting Hill, London W11 4JG, United Kingdom', city_id: london.id, category_id: food.id, average_rating: 5, food_list: ["brunch", "burgers"])
place2 = Place.create(name: 'London Eye', address: "London Eye, Westminster Bridge Road, London SE1 7PB, United Kingdom", city_id: london.id, category_id: sight.id, average_rating: 3, food_list: "views", sight_list: "touristy")
place3 = Place.create(name: 'Natural History Museum', address: "Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom", city_id: london.id, category_id: entertainment.id, average_rating: 4, food_list: "culture", sight_list: "museum")
place4 = Place.create(name: "The Anglesea Arms", address: "15 Selwood Terrace, South Kensington, London SW7 3QG, United Kingdom", city_id: london.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])
place5 = Place.create(name: "Kabuki Wellington", address: "Calle de Velázquez, 6, 28001 Madrid, Spain", city_id: madrid.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])

puts "Creating places for Madrid"
place1 = Place.create(name: 'Bola', address: 'Calle de la Bola, Madrid, Spain', city_id: madrid.id, category_id: food.id, average_rating: 4)
place2 = Place.create(name: 'Reina Sofia', address: "Paseo de Recoletos, Madrid, Spain", city_id: madrid.id, category_id: sight.id, average_rating: 5)
