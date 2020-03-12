require 'open-uri'

puts "Destroying users, cities, categories and places."

Follow.destroy_all
Place.destroy_all
List.destroy_all
City.destroy_all
Category.destroy_all
User.destroy_all

file1 = URI.open("https://i.imgur.com/uxzGHFY.jpg")
file2 = URI.open("https://i.imgur.com/u3dwSdr.jpg")
file3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/16/3a/dd/23/photo1jpg.jpg")
file4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/11/cb/4c/bf/exterior.jpg")


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
london.photo.attach(io: file3, filename: "img3.jpg", content_type: "image/jpg")

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
place5.photo.attach(io: file4, filename: "img4.jpg", content_type: "image/jpg")

puts "Creating places for Madrid"
place1 = Place.create(name: 'Bola', address: 'Calle de la Bola, Madrid, Spain', city_id: madrid.id, category_id: food.id, average_rating: 4)
place2 = Place.create(name: 'Reina Sofia', address: "Paseo de Recoletos, Madrid, Spain", city_id: madrid.id, category_id: sight.id, average_rating: 5)






# Carol

carol = User.create(username: "carol", email: 'carolinareycota@gmail.com', password: '123456')

# City
salvador = City.create(name: 'salvador')
salvadorPhoto = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/1a/db/0d/c5/img-20191220-wa0020-largejpg.jpg")
salvador.photo.attach(io: salvadorPhoto, filename: "salvadorphoto.jpg", content_type: "image/jpg")

# Places
elevadorLacerda = Place.create(name: 'Elevador Lacerda', address: 'Praça Tomé de Souza, Centro, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, sight_list: ["touristy", "historical"])
salvador1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/17/43/a8/91/elevador-lacerda.jpg")
elevadorLacerda.photo.attach(io: salvador1, filename: "salvador1.jpg", content_type: "image/jpg")

pelourinho = Place.create(name: 'Pelourinho', address: 'Largo Terreiro de Jesus, Pelourinho, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, sight_list: ["touristy", "historical"])
salvador2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/16/3a/dd/23/photo1jpg.jpg")
pelourinho.photo.attach(io: salvador2, filename: "salvador2.jpg", content_type: "image/jpg")

misturaContorno = Place.create(name: 'Mistura Contorno', address: '334, Ladeira do Gabriel, Dois de Julho, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, food_list: ["local", "veggie"])
salvador3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/c4/75/67/photo0jpg.jpg")
misturaContorno.photo.attach(io: salvador3, filename: "salvador3.jpg", content_type: "image/jpg")

kimukeka = Place.create(name: 'Kimukeka', address: '345, Avenida Octavio Mangabeira Pituba, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, food_list: ["local", "happy hour"])
salvador4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/09/d2/e2/img-20171019-131309587.jpg")
kimukeka.photo.attach(io: salvador4, filename: "salvador4.jpg", content_type: "image/jpg")

origem = Place.create(name: 'Origem', address: '74, Alameda das Algarobas, Pituba, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, food_list: ["local", "cocktails"])
salvador5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/1a/5a/e2/3d/photo0jpg.jpg")
origem.photo.attach(io: salvador5, filename: "salvador5.jpg", content_type: "image/jpg")

portoDaBarra = Place.create(name: 'Porto da Barra Beach', address: '3783 Avenida Sete de Setembro, Barra, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, entertainment_list: 'family-friendly', sight_list: "sunset")
salvador6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/e7/8b/db/praia-do-porto-da-barra.jpg")
portoDaBarra.photo.attach(io: salvador6, filename: "salvador6.jpg", content_type: "image/jpg")

casaVidal = Place.create(name: 'Casa Vidal', address: '417 Alameda das Cajazeiras, Caminho das Árvores, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, entertainment_list: 'family-friendly', food_list: "local")
salvador7 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/10/7a/09/ba/carpaccio-de-polvo-foto.jpg")
casaVidal.photo.attach(io: salvador7, filename: "salvador7.jpg", content_type: "image/jpg")




# FOODS = ['brunch', 'burgers', 'veggie' 'cocktails', 'wine', 'local', 'happy hour'].freeze
# SIGHTS = ['museum', 'historical', 'touristy', 'parks', 'sunset'].freeze
# ENTERTAINMENTS = ['family-friendly', 'music', 'dancing', 'theatre', 'sports', 'rooftops'].freeze











