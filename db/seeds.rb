# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Clean database"
Restaurant.destroy_all

puts "Creating DB"
100.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name , address: Faker::Address.street_address, stars: [1,2 ,3 ,4 ,5].sample, chef_name: ["Gordon Ramsey", "Paul Bocuse", "Enrique Olvera", "Thomas Keller"].sample)
  puts "#{restaurant.name} created"
end


puts "#{Restaurant.all.count} created"
