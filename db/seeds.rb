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
puts 'creating 4 users & 15 bikes'

user1 = User.new(first_name: 'Ariel', last_name: 'Jurke', email: 'ariel@abc.com', password: 'azerty', phone_number: '0503050434')
user2 = User.new(first_name: 'Karim', last_name: 'Zin', email: 'karim@abc.com', password: 'azerty', phone_number: '0503050434')
user3 = User.new(first_name: 'Alexandre', last_name: 'Fleur', email: 'alexandre@abc.com', password: 'azerty', phone_number: '0503050434')
user4 = User.new(first_name: 'Matteo', last_name: 'Bianc', email: 'matteo@abc.com', password: 'azerty', phone_number: '0503050434')

user1.save!
user2.save!
user3.save!
user4.save!

bike1 = Bike.new(bike_type: "Mountain Bike", brand: 'Santa Cruz', address: '16 villa gaudelet 75011 Paris', description: 'The best bike ever', price_per_day: 42)
bike2 = Bike.new(bike_type: "City Bike", brand: 'Rossolini', address: '130 rue Oberkampf 75011 Paris', description: 'A bit rusty but all good', price_per_day: 11)
bike3 = Bike.new(bike_type: "Mountain Bike", brand: 'Mason', address: '92 rue Réaumur 75002 Paris', description: 'A fine bike for a nice day', price_per_day: 15)
bike4 = Bike.new(bike_type: "Mountain Bike", brand: 'Santa Cruz', address: '102 rue de Provence 75009 Paris', description: 'Will take you from point A to point B', price_per_day: 12)
bike5 = Bike.new(bike_type: "City Bike", brand: 'WegoBoard', address: '106 rue du Bac 75007 Paris', description: 'Fancy bike for fancy people', price_per_day: 50)
bike6 = Bike.new(bike_type: "City Bike", brand: 'NDIE', address: '26 rue Vavin 75006 Paris', description: 'Cosy ride guranteed', price_per_day: 40)
bike7 = Bike.new(bike_type: "Mountain Bike", brand: 'Trek', address: '44 rue Vieille-du-Temple 75003 Paris', description: 'Glamorous bike', price_per_day: 25)
bike8 = Bike.new(bike_type: "Road Bike", brand: 'Wilier', address: '1 place Vendome, 75001 Paris', description: 'Does its work', price_per_day: 18)
bike9 = Bike.new(bike_type: "Road Bike", brand: 'Verve', address: '12 rue Alexandre Parodi 75010 Paris', description: 'The worst bike ever', price_per_day: 5)
bike10 = Bike.new(bike_type: "Mountain Bike", brand: 'Drop Bar', address: "8 rue de l'Exposition 75007 Paris", description: 'For a daily tour in the City', price_per_day: 22)
bike11 = Bike.new(bike_type: "City Bike", brand: 'Bianchi', address: 'Bd du Lycee 74000 Annecy', description: 'For any lakeside trip', price_per_day: 16 )
bike12 = Bike.new(bike_type: "Mountain Bike", brand: 'Focus', address: '3 rue Saint-François de Sales 74000 Annecy', description: 'Solid and light mountain bike', price_per_day: 30)
bike13 = Bike.new(bike_type: "Road Bike", brand: 'Surly', address: "Avenue d'Albigny 74000 Annecy", description: 'To race your friends down a hill', price_per_day: 10)
bike14 = Bike.new(bike_type: "Mountain Bike", brand: 'MSC', address: '7 rue des Pavillons 74000 Annecy', description: 'For any nature lover', price_per_day: 13)
bike15 = Bike.new(bike_type: "Road Bike", brand: 'Surly', address: "11 avenue des iles 74000 Annecy", description: 'Chill ride by the lake', price_per_day: 11)

bike1.photo.attach(io: URI.open("https://www.switchbacktravel.com/sites/default/files/articles%20/Mountain%20Bike%20(Santa%20Cruz%20Bronson%20-%20m).jpg") , filename: "bike1.png", content_type: "image/png")
bike2.photo.attach(io: URI.open("https://cdn-acpll.nitrocdn.com/vjeVLRcTkSMdCxNseIAxpRXMiSBQYMUg/assets/static/optimized/rev-742dd0b/wp-content/uploads/2021/04/What-Is-a-City-Bike-1024x683.jpg") , filename: "bike2.png", content_type: "image/png")
bike3.photo.attach(io: URI.open("https://off.road.cc/sites/default/files/styles/970wide/public/thumbnails/image/first-look-mason-raw-mountain-bike-hardtail-drive-side-2021.jpg?itok=KQXCij6N") , filename: "bike3.png", content_type: "image/png")
bike4.photo.attach(io: URI.open("https://www.velovert.com/photos/news/zooms/60935efe5e8b428992f4ff5ffe908d73160525478367.jpg") , filename: "bike4.png", content_type: "image/png")
bike5.photo.attach(io: URI.open("https://wegoboard.com/5161-large_default/velo-electrique-pliable-citybike-argent.jpg") , filename: "bike5.png", content_type: "image/png")
bike6.photo.attach(io: URI.open("https://marketplacer.imgix.net/UM/hhH7jFsV48mCxgHyepUvl6ZvY.jpg?auto=format&fm=pjpg&fit=max&w=1000&h=1000&s=e777a43f80147484ce7752cf654ddf86") , filename: "bike6.png", content_type: "image/png")
bike7.photo.attach(io: URI.open("https://i.insider.com/61b26170c9eb7b0019f0cf7a?width=1000&format=jpeg&auto=webp") , filename: "bike7.png", content_type: "image/png")
bike8.photo.attach(io: URI.open("https://images.immediate.co.uk/production/volatile/sites/21/2020/11/Wilier-Filante-SLR-02-b60dbd8.jpg?quality=90&resize=620,413") , filename: "bike8.png", content_type: "image/png")
bike9.photo.attach(io: URI.open("https://images.unsplash.com/photo-1528732942118-fcc0881d7ba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnJva2VuJTIwYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80") , filename: "bike9.png", content_type: "image/png")
bike10.photo.attach(io: URI.open("https://bikepacking.com/wp-content/uploads/2020/05/MOOTS-Baxter-Review_64-960x640.jpg") , filename: "bike10.png", content_type: "image/png")
bike11.photo.attach(io: URI.open("https://i.insider.com/5c9cdeaf8e436a287208b6f2?width=1000&format=jpeg&auto=webp") , filename: "bike11.png", content_type: "image/png")
bike12.photo.attach(io: URI.open("https://d2rfa446ja7yzb.cloudfront.net/eyJidWNrZXQiOiJtaXJyb3IuZ2V0Zmxvd2JveC5jb20uZXUtd2VzdC0xLmxpdmUiLCJrZXkiOiJhSFIwY0hNNkx5OTNkM2N1YVc1emRHRm5jbUZ0TG1OdmJTOXdMME5rVjFaSk1XZE5VVTltTHc9PS90aHVtYm5haWwiLCJlZGl0cyI6eyJ0b0Zvcm1hdCI6IndlYnAiLCJyZXNpemUiOnsid2lkdGgiOjY0MH19fQ==") , filename: "bike12.png", content_type: "image/png")
bike13.photo.attach(io: URI.open("https://surlybikes.com/uploads/bikes/798568_SUR_Midnight_Special_Background_VF-1200x800.jpg") , filename: "bike13.png", content_type: "image/png")
bike14.photo.attach(io: URI.open("https://p.vitalmtb.com/photos/users/2/photos/742/s1600_91675860_1248878226.jpg") , filename: "bike14.png", content_type: "image/png")
bike15.photo.attach(io: URI.open("https://surlybikes.com/uploads/bikes/Straggler_BK2125_Background-1200x800.jpg") , filename: "bike15.png", content_type: "image/png")

bike1.user = user1
bike2.user = user2
bike3.user = user3
bike4.user = user3
bike5.user = user1
bike6.user = user1
bike7.user = user2
bike8.user = user1
bike9.user = user3
bike10.user = user3
bike11.user = user1
bike12.user = user2
bike13.user = user4
bike14.user = user4
bike15.user = user3

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
bike11.save!
bike12.save!
bike13.save!
bike14.save!
bike15.save!

puts '4 users & 15 bikes have been created'
