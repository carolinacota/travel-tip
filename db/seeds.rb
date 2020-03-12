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


puts "Creating lists"
list1 = List.create(user: user1, city: madrid, is_wishlist: false)

puts "Creating Categories"
food = Category.create(name: 'Food & Drinks')
sight = Category.create(name: 'Sights & attractions')
entertainment = Category.create(name: 'Entertainment')

puts "Creating places for Madrid"
place1 = Place.create(name: 'Bola', address: 'Calle de la Bola, Madrid, Spain', city_id: madrid.id, category_id: food.id, average_rating: 4)
place2 = Place.create(name: 'Reina Sofia', address: "Paseo de Recoletos, Madrid, Spain", city_id: madrid.id, category_id: sight.id, average_rating: 5)






# Carol

carol = User.create(username: "carol", email: 'carolinareycota@gmail.com', password: '123456')

# City
london = City.create(name: 'london')
londonPhoto = URI.open("https://unsplash.com/photos/Q6UehpkBSnQ")
london.photo.attach(io: londonPhoto, filename: "londonphoto.jpg", content_type: "image/jpg")

# Places
casaCruz = Place.create(name: 'Casa Cruz', address: '123A Clarendon Rd, Notting Hill, London W11 4JG, United Kingdom', city_id: london.id, category_id: food.id, food_list: ["brunch", "cocktails"])
london1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/14/ec/77/62/casa-cruz.jpg")
casaCruz.photo.attach(io: london1, filename: "london1.jpg", content_type: "image/jpg")

londonEye = Place.create(name: 'London Eye', address: "London Eye, Westminster Bridge Road, London SE1 7PB, United Kingdom", city_id: london.id, category_id: sight.id, average_rating: 3, food_list: "views", sight_list: "touristy")
london2 = URI.open("https://unsplash.com/photos/rn-0OotfzFA")
londonEye.photo.attach(io: london2, filename: "london2.jpg", content_type: "image/jpg")

museum = Place.create(name: 'Natural History Museum', address: "Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom", city_id: london.id, category_id: entertainment.id, average_rating: 4, food_list: "culture", sight_list: "museum")
london3 = URI.open("https://unsplash.com/photos/CFi7_hCXecU")
museum.photo.attach(io: london3, filename: "london3.jpg", content_type: "image/jpg")

angleseaArms = Place.create(name: "The Anglesea Arms", address: "15 Selwood Terrace, South Kensington, London SW7 3QG, United Kingdom", city_id: london.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])
london4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/10/de/cf/1e/the-anglesea-arms.jpg")
museum.photo.attach(io: london4, filename: "london4.jpg", content_type: "image/jpg")

kabuki = Place.create(name: "Kabuki Wellington", address: "Calle de Velázquez, 6, 28001 Madrid, Spain", city_id: madrid.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])
london5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/f5/d8/32/photo1jpg.jpg")
kabuki.photo.attach(io: london5, filename: "london5.jpg", content_type: "image/jpg")


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

misturaContorno = Place.create(name: 'Mistura Contorno', address: '334 Ladeira do Gabriel, Dois de Julho, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, food_list: ["local", "veggie"])
salvador3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/12/11/ae/ae/photo0jpg.jpg")
misturaContorno.photo.attach(io: salvador3, filename: "salvador3.jpg", content_type: "image/jpg")

kimukeka = Place.create(name: 'Kimukeka', address: '345 Avenida Octavio Mangabeira Pituba, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, food_list: ["local", "happy hour"])
salvador4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/09/d2/e2/img-20171019-131309587.jpg")
kimukeka.photo.attach(io: salvador4, filename: "salvador4.jpg", content_type: "image/jpg")

origem = Place.create(name: 'Origem', address: '1 Alameda dos Flamboyants, Pituba, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, food_list: ["local", "cocktails"])
salvador5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/19/9f/53/b4/restaurante-origem.jpg")
origem.photo.attach(io: salvador5, filename: "salvador5.jpg", content_type: "image/jpg")

portoDaBarra = Place.create(name: 'Porto da Barra Beach', address: '3783 Avenida Sete de Setembro, Barra, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, entertainment_list: 'family-friendly', sight_list: "sunset")
salvador6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/e7/8b/db/praia-do-porto-da-barra.jpg")
portoDaBarra.photo.attach(io: salvador6, filename: "salvador6.jpg", content_type: "image/jpg")

casaVidal = Place.create(name: 'Casa Vidal', address: '417 Alameda das Cajazeiras, Caminho das Árvores, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, entertainment_list: 'family-friendly', food_list: "local")
salvador7 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/10/7a/09/ba/carpaccio-de-polvo-foto.jpg")
casaVidal.photo.attach(io: salvador7, filename: "salvador7.jpg", content_type: "image/jpg")

# City
saopaulo = City.create(name: 'são paulo')
saoPauloPhoto = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0d/57/74/94/photo2jpg.jpg")
saopaulo.photo.attach(io: saoPauloPhoto, filename: "saopaulophoto.jpg", content_type: "image/jpg")

# Places
purana = Place.create(name: 'Purana', address: '840 Rua Cônego Eugênio Leite, Pinheiros, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: sight.id, food_list: ["local", "veggie"])
saopaulo1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/16/57/d1/d0/photo0jpg.jpg")
purana.photo.attach(io: saopaulo1, filename: "saopaulo1.jpg", content_type: "image/jpg")

paulista = Place.create(name: 'Paulista Avenue', address: '1578 Avenida Paulista, Bela Vista, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: sight.id, sight_list: ["touristy", "historical"])
saopaulo2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-o/17/e5/c4/85/20190406-081040-largejpg.jpg")
paulista.photo.attach(io: saopaulo2, filename: "saopaulo2.jpg", content_type: "image/jpg")

ibirapuera = Place.create(name: 'Ibirapuera Park', address: 'Avenida Pedro Álvares Cabral, Vila Mariana, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: sight.id, sight_list: ["parks", "sunset"])
saopaulo3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/1a/22/70/87/ovo-de-pascoa-ibirapuera.jpg")
ibirapuera.photo.attach(io: saopaulo3, filename: "saopaulo3.jpg", content_type: "image/jpg")

terracoItalia = Place.create(name: 'Terraço Itália', address: 'Avenida Pedro Álvares Cabral, Vila Mariana, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: sight.id, entertainment_list: ["family-friendly", "rooftops"])
saopaulo4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/17/ef/a5/71/file-com-risoto.jpg")
terracoItalia.photo.attach(io: saopaulo4, filename: "saopaulo4.jpg", content_type: "image/jpg")


# FOODS = ['brunch', 'burgers', 'veggie' 'cocktails', 'wine', 'local', 'happy hour'].freeze
# SIGHTS = ['museum', 'historical', 'touristy', 'parks', 'sunset'].freeze
# ENTERTAINMENTS = ['family-friendly', 'music', 'dancing', 'theatre', 'sports', 'rooftops'].freeze











