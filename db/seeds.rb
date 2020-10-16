# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.unique.ingredient, cost: Faker::Number.decimal(r_digits:1), origin: Faker::Address.country)
end

Review.destroy_all

250.times do |index|
  Review.create!(author: Faker::Name.unique.name, rating: Faker::Number.between(from: 1, to: 5).to_i, content: Faker::Lorem.paragraph_by_chars(number:55))
end