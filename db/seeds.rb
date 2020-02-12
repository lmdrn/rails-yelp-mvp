# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name: Faker::Movies::HarryPotter.character,
    address: Faker::Movies::HarryPotter.location,
    phone_number: Faker::Number.leading_zero_number(digits: 10),
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  restaurant.save!
end
puts 'Finished!'
