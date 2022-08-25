# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning data base'
User.destroy_all
Bike.destroy_all
puts 'creating 4 users & 10 bikes'

user1 = User.new(first_name: 'Ariel', last_name: 'Jurke', email: 'ariel@abc.com', password: 'azerty', phone_number: '0503050434')
user2 = User.new(first_name: 'Karim', last_name: 'Zin', email: 'karim@abc.com', password: 'azerty', phone_number: '0503050434')
user3 = User.new(first_name: 'Alexandre', last_name: 'Fleur', email: 'alexandre@abc.com', password: 'azerty', phone_number: '0503050434')
user4 = User.new(first_name: 'Matteo', last_name: 'Bianc', email: 'matteo@abc.com', password: 'azerty', phone_number: '0503050434')

bike1 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Decathlon', address: '16 villa gaudelet 75011 Paris', description: 'The best bike ever', price_per_day: 69)
bike2 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Intersport', address: '130 rue Oberkampf 75011 Paris', description: 'A bit rusty but all good', price_per_day: 11)
bike3 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'TDF', address: '92 rue Réaumur 75002 Paris', description: 'A fine bike for a nice day', price_per_day: 15)
bike4 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'TDF', address: '102 rue de Provence 75009 Paris', description: 'Will take you from point A to point B', price_per_day: 12)
bike5 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Deacathlon', address: '106 rue du Bac 75007 Paris', description: 'Fancy bike for fancy people', price_per_day: 50)
bike6 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Decathlon', address: '26 rue Vavin 75006 Paris', description: 'Cosy ride guranteed', price_per_day: 40)
bike7 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Intersport', address: '44 rue Vieille-du-Temple 75003', description: 'Glamorous bike', price_per_day: 25)
bike8 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Velib City', address: '1 place Vendôme 75001 Paris', description: 'Does its work', price_per_day: 18)
bike9 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'Velib City', address: '12 rue Alexandre Parodi 75010 Paris', description: 'The worst bike ever', price_per_day: 5)
bike10 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'TDF', address: "8 rue de l'Exposition 75007 Paris", description: 'For a daily tour in the City', price_per_day: 22)

bike1.photo.attach(io: URI.open("https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80") , filename: "bike1.png", content_type: "image/png")
bike2.photo.attach(io: URI.open("https://images.unsplash.com/photo-1576435728678-68d0fbf94e91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1348&q=80") , filename: "bike2.png", content_type: "image/png")
bike3.photo.attach(io: URI.open("https://images.unsplash.com/photo-1571068316344-75bc76f77890?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80") , filename: "bike3.png", content_type: "image/png")
bike4.photo.attach(io: URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80") , filename: "bike4.png", content_type: "image/png")
bike5.photo.attach(io: URI.open("https://images.unsplash.com/photo-1505705694340-019e1e335916?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80") , filename: "bike5.png", content_type: "image/png")
bike6.photo.attach(io: URI.open("https://images.unsplash.com/photo-1618762044398-ec1e7e048bbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80") , filename: "bike6.png", content_type: "image/png")
bike7.photo.attach(io: URI.open("https://images.unsplash.com/photo-1583227122027-d2d360c66d3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80") , filename: "bike7.png", content_type: "image/png")
bike8.photo.attach(io: URI.open("https://images.unsplash.com/photo-1571333247701-6bb4d7314edd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80") , filename: "bike8.png", content_type: "image/png")
bike9.photo.attach(io: URI.open("https://images.unsplash.com/photo-1596738141905-51e94b519d69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80") , filename: "bike9.png", content_type: "image/png")
bike10.photo.attach(io: URI.open("https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80") , filename: "bike10.png", content_type: "image/png")

user1.save!
user2.save!
user3.save!
user4.save!
bike1.user = user1
bike2.user = user2
bike3.user = user3
bike4.user = user3
bike5.user = user1
bike6.user = user1
bike7.user = user2
bike8.user = user4
bike9.user = user4
bike10.user = user3
bike1.save!
bike2.save!
bike3.save!
bike4.save!
bike5.save!
bike6.save!
bike7.save!
bike8.save!
bike9.save!
bike10.save!

puts '4 users & 10 bikes have been created'
