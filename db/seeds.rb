# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

epicure = Restaurant.create(phone_number: Faker::PhoneNumber.phone_number, name: "Epicure", category: "french", address: Faker::Address.city)
Review.create(content: Faker::Restaurant.review , rating: 1, restaurant_id: epicure.id)

restaurant2 = Faker::Restaurant.name
restaurant2 = Restaurant.create(phone_number: Faker::PhoneNumber.phone_number, name: restaurant2, category: "french", address: Faker::Address.city)
Review.create(content: Faker::Restaurant.review , rating: 2, restaurant_id: restaurant2.id)

restaurant3 = Faker::Restaurant.name
restaurant3 = Restaurant.create(phone_number: Faker::PhoneNumber.phone_number, name: restaurant3, category: "chinese", address: Faker::Address.city)
Review.create(content: Faker::Restaurant.review , rating: 3, restaurant_id: restaurant3.id)

restaurant4 = Faker::Restaurant.name
restaurant4 = Restaurant.create(phone_number: Faker::PhoneNumber.phone_number, name: restaurant4, category: "italian", address: Faker::Address.city)
Review.create(content: Faker::Restaurant.review , rating: 4, restaurant_id: restaurant4.id)

restaurant5 = Faker::Restaurant.name
restaurant5 = Restaurant.create(phone_number: Faker::PhoneNumber.phone_number, name: restaurant5, category: "belgian", address: Faker::Address.city)
Review.create(content: Faker::Restaurant.review , rating: 5, restaurant_id: restaurant5.id)
