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
# madrid = City.create(name: 'madrid')
# tokyo = City.create(name: 'tokyo')



puts "Creating lists"

# puts "Creating lists"

# list1 = List.create(user: user1, city: madrid, is_wishlist: false)

puts "Creating Categories"
food = Category.create(name: 'Food & Drinks')
sight = Category.create(name: 'Sights & attractions')
entertainment = Category.create(name: 'Entertainment')



# place1 = Place.create(name: 'Bola', address: 'Calle de la Bola, Madrid, Spain', city_id: madrid.id, category_id: food.id, average_rating: 4)
# place2 = Place.create(name: 'Reina Sofia', address: "Paseo de Recoletos, Madrid, Spain", city_id: madrid.id, category_id: sight.id, average_rating: 5)




# User

carol = User.create(username: "carol", email: 'carolinareycota@gmail.com', password: '123456')
vir = User.create(username: "virgi", email: 'virgarmar@hotmail.com', password: '123456')

# City
london = City.create(name: 'london')
londonPhoto = URI.open("https://www.londonpass.com/siteimg/newpages/238389676_TowerBridge1.jpg")
london.photo.attach(io: londonPhoto, filename: "londonphoto.jpg", content_type: "image/jpg")

# Places
casaCruz = Place.create(name: 'Casa Cruz', address: '123A Clarendon Rd, Notting Hill, London W11 4JG, United Kingdom', city_id: london.id, category_id: food.id, food_list: ["brunch", "cocktails"])
london1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/14/ec/77/62/casa-cruz.jpg")
casaCruz.photo.attach(io: london1, filename: "london1.jpg", content_type: "image/jpg")

londonEye = Place.create(name: 'London Eye', address: "London Eye, Westminster Bridge Road, London SE1 7PB, United Kingdom", city_id: london.id, category_id: sight.id, average_rating: 3, food_list: "views", sight_list: "touristy")
london2 = URI.open("https://i.imgur.com/dJGRRyI.jpg")
londonEye.photo.attach(io: london2, filename: "london2.jpg", content_type: "image/jpg")

museum = Place.create(name: 'Natural History Museum', address: "Cromwell Rd, South Kensington, London SW7 5BD, United Kingdom", city_id: london.id, category_id: entertainment.id, average_rating: 4, food_list: "culture", sight_list: "museum")
london3 = URI.open("https://i.imgur.com/jTRQTVU.jpg")
museum.photo.attach(io: london3, filename: "london3.jpg", content_type: "image/jpg")

angleseaArms = Place.create(name: "The Anglesea Arms", address: "15 Selwood Terrace, South Kensington, London SW7 3QG, United Kingdom", city_id: london.id, category_id: food.id, average_rating: 4, food_list: ["cocktails", "wine"])
london4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/10/de/cf/1e/the-anglesea-arms.jpg")
angleseaArms.photo.attach(io: london4, filename: "london4.jpg", content_type: "image/jpg")

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

misturaContorno = Place.create(name: 'Mistura Contorno', address: '334 Ladeira do Gabriel, Dois de Julho, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: food.id, food_list: ["local", "veggie"])
salvador3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/12/11/ae/ae/photo0jpg.jpg")
misturaContorno.photo.attach(io: salvador3, filename: "salvador3.jpg", content_type: "image/jpg")

kimukeka = Place.create(name: 'Kimukeka', address: '345 Avenida Octavio Mangabeira Pituba, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: food.id, food_list: ["local", "happy hour"])
salvador4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/09/d2/e2/img-20171019-131309587.jpg")
kimukeka.photo.attach(io: salvador4, filename: "salvador4.jpg", content_type: "image/jpg")

origem = Place.create(name: 'Origem', address: '1 Alameda dos Flamboyants, Pituba, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: food.id, food_list: ["local", "cocktails"])
salvador5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/19/9f/53/b4/restaurante-origem.jpg")
origem.photo.attach(io: salvador5, filename: "salvador5.jpg", content_type: "image/jpg")

portoDaBarra = Place.create(name: 'Porto da Barra Beach', address: '3783 Avenida Sete de Setembro, Barra, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: sight.id, entertainment_list: 'family-friendly', sight_list: "sunset")
salvador6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/e7/8b/db/praia-do-porto-da-barra.jpg")
portoDaBarra.photo.attach(io: salvador6, filename: "salvador6.jpg", content_type: "image/jpg")

casaVidal = Place.create(name: 'Casa Vidal', address: '417 Alameda das Cajazeiras, Caminho das Árvores, Salvador, Bahia, Brasil', city_id: salvador.id, category_id: food.id, entertainment_list: 'family-friendly', food_list: "local")
salvador7 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/10/7a/09/ba/carpaccio-de-polvo-foto.jpg")
casaVidal.photo.attach(io: salvador7, filename: "salvador7.jpg", content_type: "image/jpg")

# City
saopaulo = City.create(name: 'são paulo')
saoPauloPhoto = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0d/57/74/94/photo2jpg.jpg")
saopaulo.photo.attach(io: saoPauloPhoto, filename: "saopaulophoto.jpg", content_type: "image/jpg")

# Places
purana = Place.create(name: 'Purana', address: '840 Rua Cônego Eugênio Leite, Pinheiros, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: food.id, food_list: ["local", "veggie"])
saopaulo1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/16/57/d1/d0/photo0jpg.jpg")
purana.photo.attach(io: saopaulo1, filename: "saopaulo1.jpg", content_type: "image/jpg")

paulista = Place.create(name: 'Paulista Avenue', address: '1578 Avenida Paulista, Bela Vista, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: sight.id, sight_list: ["touristy", "historical"])
saopaulo2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-o/17/e5/c4/85/20190406-081040-largejpg.jpg")
paulista.photo.attach(io: saopaulo2, filename: "saopaulo2.jpg", content_type: "image/jpg")

ibirapuera = Place.create(name: 'Ibirapuera Park', address: 'Avenida Pedro Álvares Cabral, Vila Mariana, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: sight.id, sight_list: ["parks", "sunset"])
saopaulo3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/1a/22/70/87/ovo-de-pascoa-ibirapuera.jpg")
ibirapuera.photo.attach(io: saopaulo3, filename: "saopaulo3.jpg", content_type: "image/jpg")

terracoItalia = Place.create(name: 'Terraço Itália', address: 'Avenida Pedro Álvares Cabral, Vila Mariana, São Paulo, São Paulo, Brasil', city_id: saopaulo.id, category_id: entertainment.id, entertainment_list: ["family-friendly", "rooftops"])
saopaulo4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/17/ef/a5/71/file-com-risoto.jpg")
terracoItalia.photo.attach(io: saopaulo4, filename: "saopaulo4.jpg", content_type: "image/jpg")


#virginia

# City
madrid = City.create(name: 'madrid')
madridPhoto = URI.open("https://images.unsplash.com/photo-1543783207-ec64e4d95325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")
madrid.photo.attach(io: madridPhoto, filename: "madridPhoto.jpg", content_type: "image/jpg")

# Places
temploDebod = Place.create(name: 'Debod Temple', address: 'Calle de Ferraz, 1, 28008 Madrid, Spain', city_id: madrid.id, category_id: sight.id, sight_list: ["sunset", "historical"])
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

rastro = Place.create(name: 'El Rastro', address: 'Calle de Carlos Arniches, 14, 28005 Madrid, Spain', city_id: madrid.id, category_id: sight.id, entertainment_list: 'family-friendly', sight_list: "touristy")
madrid6 = URI.open("https://db82kmzzne7f2.cloudfront.net/ghost-bloges/2018/03/paseo.jpg")
rastro.photo.attach(io: madrid6, filename: "madrid6.jpg", content_type: "image/jpg")

mercadoMiguel = Place.create(name: 'S. Miguel Market', address: 'Calle de Bordadores, 3, 28013 Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['best value', "local"])
madrid7 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0a/dc/14/59/20160409-123912-largejpg.jpg")
mercadoMiguel.photo.attach(io: madrid7, filename: "madrid7.jpg", content_type: "image/jpg")

vega = Place.create(name: 'Vega', address: 'Calle de la Luna, 9, Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['veggie', "wine"])
madrid8 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0a/ba/a5/c7/local.jpg")
vega.photo.attach(io: madrid8, filename: "madrid8.jpg", content_type: "image/jpg")

puntoMX = Place.create(name: 'Punto MX', address: 'Calle del General Pardiñas, 40, 28001 Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['brunch', "cocktails"])
madrid9 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/16/76/b9/e5/tuetano-a-la-brasa.jpg")
puntoMX.photo.attach(io: madrid9, filename: "madrid9.jpg", content_type: "image/jpg")

prado = Place.create(name: 'Prado Museum', address: 'Paseo del Prado, 8, 28014 Madrid, Spain', city_id: madrid.id, category_id: sight.id, sight_list: ["museum", "touristy"])
madrid10 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/18/0e/96/e6/photo0jpg.jpg")
prado.photo.attach(io: madrid10, filename: "madrid10.jpg", content_type: "image/jpg")

inclan = Place.create(name: 'Inclan Brutal Bar', address: 'Calle de Arlabán, 7, 28014 Madrid, Spain', city_id: madrid.id, category_id: food.id, food_list: ['cocktails', "wine"])
madrid11 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/13/91/8d/45/barra.jpg")
inclan.photo.attach(io: madrid11, filename: "madrid11.jpg", content_type: "image/jpg")

mago = Place.create(name: 'Mago Pop', address: 'Calle de San Bernardo, 2, 28013 Madrid', city_id: madrid.id, category_id: entertainment.id, entertainment_list: ['theatre', "music"])
madrid12 = URI.open("https://media-cdn.tripadvisor.com/media/photo-f/11/f7/bc/9f/el-mago-pop-nada-es-imposible.jpg")
mago.photo.attach(io: madrid12, filename: "madrid12.jpg", content_type: "image/jpg")




#Isa
isa = User.create(username: "isa", email: 'ilopezg31@gmail.com', password: '123456')

# City
panama = City.create(name: 'panama')
panamaPhoto = URI.open("https://images.unsplash.com/photo-1540610410855-b4c8877b761c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2406&q=80")
panama.photo.attach(io: panamaPhoto, filename: "panamaohoto.jpg", content_type: "image/jpg")

#Places
antiBurger = Place.create(name: 'AntiBurger', address: 'Calle 71, Panamá, Panamá', city_id: panama.id, category_id: food.id, food_list: ["veggie", "burgers"])
panama1 = URI.open("https://i.imgur.com/WWGFX2I.jpg")
antiBurger.photo.attach(io: panama1,  filename: "panama1.jpg", content_type: "image/jpg")

tantalo = Place.create(name: 'Tantalo', address: 'San Felipe, Panama City, Panama', city_id: panama.id, category_id: entertainment.id, food_list: "happy hour", entertainment_list: ["rooftop"])
panama2 = URI.open("https://i.imgur.com/ol0wzby.jpg")
tantalo.photo.attach(io: panama2,  filename: "panama2.jpg", content_type: "image/jpg")

fonda = Place.create(name: 'Fonda Lo Que Hay', address: 'Calle 12, Panamá, Panamá', city_id: panama.id, category_id: food.id, food_list: "local")
panama3 = place3pic = URI.open("https://i.imgur.com/tgoZznR.jpg")
fonda.photo.attach(io: panama3,  filename: "panama3.jpg", content_type: "image/jpg")

azahar = Place.create(name: 'Azahar', address: 'AVENIDA BALBOA, PANAMA, PANAMA', city_id: panama.id, category_id: food.id, food_list: "cocktails", sight_list: "sunset")
panama4 = URI.open("https://i.imgur.com/CiDd0oI.jpg")
azahar.photo.attach(io: panama4,  filename: "panama4.jpg", content_type: "image/jpg")

brutto = Place.create(name: 'Brutto', address: 'Calle 74 Este, Panamá, Panama', city_id: panama.id, category_id: food.id, food_list: "happy hour")
panama5 = URI.open("https://i.imgur.com/cVNB9WC.jpg")
brutto.photo.attach(io: panama5,  filename: "panama5.jpg", content_type: "image/jpg")

amano = Place.create(name: 'Amano', address: 'Calle 70 Este, Panamá, Panama', city_id: panama.id, category_id: food.id, food_list: ["wine", "cocktails"])
panama6 = URI.open("https://i.imgur.com/pRQAN4R.jpg")
amano.photo.attach(io: panama6,  filename: "panama6.jpg", content_type: "image/jpg")

santana = Place.create(name: 'Santana', address: 'Casco Viejo, Panama City, Panama', city_id: panama.id, category_id: entertainment.id, entertainment_list: ["music", "dancing"])
panama7 = URI.open("https://i.imgur.com/bj1r8RN.jpg")
santana.photo.attach(io: panama7,  filename: "panama7.jpg", content_type: "image/jpg")

canal = Place.create(name: 'Panama Canal', address: 'Miraflores Locks, Panama City, Panama', city_id: panama.id, category_id: sight.id, sight_list: ["touristy", "museum"])
panama8 = URI.open("https://i.imgur.com/lW5LYLI.jpg")
canal.photo.attach(io: panama8,  filename: "panama8.jpg", content_type: "image/jpg")

panamaViejo = Place.create(name: 'Panama Viejo', address: 'Vía Cincuentenario, Panamá, Panama', city_id: panama.id, category_id: sight.id, sight_list: ["touristy", "historical"])
panama9 = URI.open("https://i.imgur.com/SbLIGN1.jpg")
panamaViejo.photo.attach(io: panama9,  filename: "panama9.jpg", content_type: "image/jpg")

biomuseo = Place.create(name: 'Biomuseo', address: 'Amador Causeway 136, Panama City, Panama', city_id: panama.id, category_id: sight.id, sight_list: "museum")
panama10 = URI.open("https://i.imgur.com/7Ry4c1q.jpg")
biomuseo.photo.attach(io: panama10,  filename: "panama10.jpg", content_type: "image/jpg")

cascoViejo = Place.create(name: 'Casco Viejo', address: 'San Felipe, Panama City, Panama', city_id: panama.id, category_id: sight.id, sight_list: ["touristy", "historical"])
panama11 = URI.open("https://i.imgur.com/3YDENbN.jpg")
cascoViejo.photo.attach(io: panama11,  filename: "panama11.jpg", content_type: "image/jpg")

casaBruja = Place.create(name: 'Casa Bruja', address: 'Costa del Este, Panama City, Panama', city_id: panama.id, category_id: food.id, food_list: "happy hour", entertainment_list: "music")
panama12 = URI.open("https://i.imgur.com/fRi7r2A.jpg")
casaBruja.photo.attach(io: panama12,  filename: "panama12.jpg", content_type: "image/jpg")

karma = Place.create(name: 'Karma', address: 'Calle 56 Este, Panamá, Panama', city_id: panama.id, category_id: food.id, food_list: "veggie")
panama13 = URI.open("https://i.imgur.com/RFMvq6I.jpg")
karma.photo.attach(io: panama13,  filename: "panama13.jpg", content_type: "image/jpg")

salvaje = Place.create(name: 'Salvaje', address: 'Avenida Eloy Alfaro, Panama City, Panama', city_id: panama.id, category_id: food.id, food_list: "happy hour", entertainment_list: "music")
panama14 = URI.open("https://i.imgur.com/c759hCT.jpg")
salvaje.photo.attach(io: panama14,  filename: "panama14.jpg", content_type: "image/jpg")

