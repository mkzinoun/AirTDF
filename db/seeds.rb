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
puts 'creating 2 users & 2 bikes'

user1 = User.new(first_name: 'Ariel', last_name: 'Jurke', email: 'ariel@abc.com', password: 'azerty', phone_number: '0503050434')
user2 = User.new(first_name: 'Karim', last_name: 'Zin', email: 'karim@abc.com', password: 'azerty', phone_number: '0503050434')
bike1 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'decathlon', address: '16 villa gaudelet 75011 Paris', description: 'The best bike ever', price_per_day: 129.99)
bike2 = Bike.new(bike_type: Bike::TYPES.sample, brand: 'intersport', address: '130 rue Oberkampf 75011 Paris', description: 'The worst bike ever', price_per_day: 10.99)

user1.save!
user2.save!
bike1.user = user1
bike2.user = user2
bike1.save!
bike2.save!

puts '2 users & 2 bikes have been created'
