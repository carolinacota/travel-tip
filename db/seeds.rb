# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destoy_all
Category.destroy_all
Place.destroy_all

puts "Creating cities"
madrid = City.new(name: 'Madrid')
city1.save!
tokyo = City.create(name: 'Tokyo')
london = City.create(name: 'London')


puts "Creating Categories"
food = Category.new(name: 'Food & Drinks')
category1.save!
sight = Category.create(name: 'Sights & attractions')
entertainment = Category.create(name: 'Entertainment')


puts "Creating places for London"
place1 = Place.new(name: 'Casa Cruz', address: '123A Clarendon Rd, Notting Hill, London W11 4JG, United Kingdom', city_id: london.id, category_id: food.id, average_rating: 5)
place1.save
place2 = Place.create(name: 'London Eye', address: "The Queen's Walk, Bishop's, London SE1 7PB, United Kingdom", city_id: london.id, category_id: sight.id, average_rating: 3)
place3 = Place.create(name: 'Natural History Museum', address: "Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom", city_id: london.id, category_id: entertainment.id, average_rating: 4)
place4 = Place.create(name: "The Anglesea Arms", address: "15 Selwood Terrace, South Kensington, London SW7 3QG, United Kingdom", city_id: london.id, category_id: food.id, average_rating: 4)
