# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating restaurants...'
tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: '390 Russel St', phone_number: '0416770983', category: 'chinese')
tour_d_argent.save!

chez_gladines = Restaurant.new(name: 'Chez Gladines', address: '32 roseberry St', phone_number: '0416770081', category: 'belgian')
chez_gladines.save!

pastuso = Restaurant.new(name: 'Pastuso', address: '10 richmond St', phone_number: '0415787236', category: 'french')
pastuso.save!

la_tienda = Restaurant.new(name: 'La Tienda', address: '10 prahran St', phone_number: '0783676027', category: 'japanese')
la_tienda.save!

universal = Restaurant.new(name: 'Universal', address: '45 Lygon St', phone_number: '097397549', category: 'italian')
universal.save!
puts 'Finished!'
