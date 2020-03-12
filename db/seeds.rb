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
# list1 = List.create(user: user1, city: madrid, is_wishlist: false)

puts "Creating Categories"
food = Category.create(name: 'Food & Drinks')
sight = Category.create(name: 'Sights & attractions')
entertainment = Category.create(name: 'Entertainment')

puts "Creating places for Madrid"
# place1 = Place.create(name: 'Bola', address: 'Calle de la Bola, Madrid, Spain', city_id: madrid.id, category_id: food.id, average_rating: 4)
# place2 = Place.create(name: 'Reina Sofia', address: "Paseo de Recoletos, Madrid, Spain", city_id: madrid.id, category_id: sight.id, average_rating: 5)






# Carol

carol = User.create(username: "carol", email: 'carolinareycota@gmail.com', password: '123456')
vir = User.create(username: "virgi", email: 'virgarmar@hotmail.com', password: '123456')

# # City
# london = City.create(name: 'london')
# londonPhoto = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/1a/db/0d/c5/img-20191220-wa0020-largejpg.jpg")
# london.photo.attach(io: londonPhoto, filename: "londonphoto.jpg", content_type: "image/jpg")

# # Places
# casaCruz = Place.create(name: 'Casa Cruz', address: '123A Clarendon Rd, Notting Hill, London W11 4JG, United Kingdom', city_id: london.id, category_id: food.id, average_rating: 5, food_list: ["brunch", "burgers"])
# london1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/1a/db/0d/c5/img-20191220-wa0020-largejpg.jpg")
# casaCruz.photo.attach(io: london1, filename: "img4.jpg", content_type: "image/jpg")


# londonEye = Place.create(name: 'London Eye', address: "London Eye, Westminster Bridge Road, London SE1 7PB, United Kingdom", city_id: london.id, category_id: sight.id, average_rating: 3, food_list: "views", sight_list: "touristy")

# museum = Place.create(name: 'Natural History Museum', address: "Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom", city_id: london.id, category_id: entertainment.id, average_rating: 4, food_list: "culture", sight_list: "museum")

# angleseaArms = Place.create(name: "The Anglesea Arms", address: "15 Selwood Terrace, South Kensington, London SW7 3QG, United Kingdom", city_id: london.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])

# kabuki = Place.create(name: "Kabuki Wellington", address: "Calle de Velázquez, 6, 28001 Madrid, Spain", city_id: madrid.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])




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

# City
saopaulo = City.create(name: 'sãopaulo')
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
saopaulo4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-o/03/b4/df/b3/piano-bar.jpg")
terracoItalia.photo.attach(io: saopaulo4, filename: "saopaulo4.jpg", content_type: "image/jpg")


# FOODS = ['brunch', 'burgers', 'veggie' 'cocktails', 'wine', 'local', 'happy hour'].freeze
# SIGHTS = ['museum', 'historical', 'touristy', 'parks', 'sunset'].freeze
# ENTERTAINMENTS = ['family-friendly', 'music', 'dancing', 'theatre', 'sports', 'rooftops'].freeze


#virginia

# City
madrid = City.create(name: 'madrid')
madridPhoto = URI.open("https://images.unsplash.com/photo-1543783207-ec64e4d95325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")
madrid.photo.attach(io: madridPhoto, filename: "madridPhoto.jpg", content_type: "image/jpg")

# Places
temploDebod = Place.create(name: 'Templo de Debod', address: 'Calle de Ferraz, 1, 28008 Madrid, Spain', city_id: madrid.id, category_id: sight.id, sight_list: ["sunset", "historical"])
madrid1 = URI.open("https://media.tacdn.com/media/attractions-splice-spp-360x240/06/73/d2/19.jpg")
temploDebod.photo.attach(io: madrid1, filename: "madrid1.jpg", content_type: "image/jpg")

retiro = Place.create(name: 'Retiro Park', address: 'Plaza de la Independencia, 7, 28001 Madrid, Spain', city_id: madrid.id, category_id: sight.id, sight_list: ["touristy", "parks"])
madrid2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0c/53/53/2c/img-20160729-205021-largejpg.jpg")
retiro.photo.attach(io: madrid2, filename: "madrid2.jpg", content_type: "image/jpg")

royalPalace = Place.create(name: 'Royal Palace', address: 'Calle de Bailén, s/n, 28071 Madrid, Spain', city_id: madrid.id, category_id: sight.id, sight_list: ["historical", "touristy"])
madrid3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/09/af/ca/4f/caption.jpg")
royalPalace.photo.attach(io: madrid3, filename: "madrid3.jpg", content_type: "image/jpg")

theHat = Place.create(name: 'The Hat', address: 'Calle Imperial, 9, 28012 Madrid, Spain', city_id: madrid.id, category_id: entertainment.id, entertainment_list: ["rooftops", "dancing"])
madrid4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/09/06/df/0f/the-hat-rooftop-madrid.jpg")
theHat.photo.attach(io: madrid4, filename: "madrid4.jpg", content_type: "image/jpg")

chueca = Place.create(name: 'Chueca District', address: 'Chueca, Madrid, Spain', city_id: madrid.id, category_id: entertainment.id, entertainment_list: ["music", "dancing"])
madrid5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/16/42/0a/d5/i-ll-pick-my-guitar-and.jpg")
chueca.photo.attach(io: madrid5, filename: "madrid5.jpg", content_type: "image/jpg")

rastro = Place.create(name: 'El Rastro', address: 'Calle de la Ribera de Curtidores, 28005 Madrid, Spain', city_id: madrid.id, category_id: sight.id, entertainment_list: 'family-friendly', sight_list: "touristy")
madrid6 = URI.open("https://db82kmzzne7f2.cloudfront.net/ghost-bloges/2018/03/paseo.jpg")
rastro.photo.attach(io: madrid6, filename: "madrid6.jpg", content_type: "image/jpg")

mercadoMiguel = Place.create(name: 'S. Miguel Market', address: 'Plaza de San Miguel, S/N, 28005 Madrid', city_id: madrid.id, category_id: food.id, food_list: ['best value', "local"])
madrid7 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0a/dc/14/59/20160409-123912-largejpg.jpg")
mercadoMiguel.photo.attach(io: madrid7, filename: "madrid7.jpg", content_type: "image/jpg")

vega = Place.create(name: 'Vega', address: 'Calle de la Luna, 9, Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['veggie', "wine"])
madrid8 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0a/ba/a5/c7/local.jpg")
vega.photo.attach(io: madrid8, filename: "madrid8.jpg", content_type: "image/jpg")

puntoMX = Place.create(name: 'Punto MX', address: 'Calle del Gral. Pardiñas, 40, 28001 Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['brunch', "cocktails"])
madrid9 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/16/76/b9/e5/tuetano-a-la-brasa.jpg")
puntoMX.photo.attach(io: madrid9, filename: "madrid9.jpg", content_type: "image/jpg")

prado = Place.create(name: 'Prado Museum', address: 'Calle de Ruiz de Alarcón, 23, 28014 Madrid, pain', city_id: madrid.id, category_id: sight.id, sight_list: ["museum", "touristy"])
madrid10 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/09/af/ca/4f/caption.jpg")
prado.photo.attach(io: madrid10, filename: "madrid10.jpg", content_type: "image/jpg")

inclan = Place.create(name: 'Inclan Brutal Bar', address: 'Calle de Arlabán, 7, 28014 Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['cocktails', "wine"])
madrid11 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/13/91/8d/45/barra.jpg")
inclan.photo.attach(io: madrid11, filename: "madrid11.jpg", content_type: "image/jpg")

mago = Place.create(name: 'Mago Pop', address: 'Calle Gran Vía, 54, 28013 Madrid, Spain', city_id: madrid.id, category_id: entertainment.id, entertainment_list: ['theatre', "music"])
madrid12 = URI.open("https://media-cdn.tripadvisor.com/media/photo-f/11/f7/bc/9f/el-mago-pop-nada-es-imposible.jpg")
mago.photo.attach(io: madrid12, filename: "madrid12.jpg", content_type: "image/jpg")


