# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying users"
User.destroy_all
puts "Creating users"
user1 = User.create(username: "firstuser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')
user2 = User.create(username: "seconduser", email: 'secondemail@gmail.com', bio: "I am the second amazing user", password: '123456')
user3 = User.create(username: "thirduser", email: 'thirdemail@gmail.com', bio: "I am the third amazing user", password: '123456')
user4 = User.create(username: "fourthuser", email: 'fourthtemail@gmail.com', bio: "I am the fourth amazing user", password: '123456')
