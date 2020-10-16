# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Food.unique.ingredient, cost: Faker::Number.decimal(r_digits:1), origin: Faker::Address.country)  
  5.times do
    product.reviews.new(author: Faker::Name.unique.name, rating: Faker::Number.between(from: 1, to: 5).to_i, content: Faker::Lorem.paragraph_by_chars(number: 50), product_id: Faker::Number.between(from: 1, to: 50))
    product.save
  end
end

# 250.times do |index|
#   Review.create!(author: Faker::Name.unique.name, rating: Faker::Number.between(from: 1, to: 5).to_i, content: Faker::Lorem.paragraph_by_chars(number: 50), product_id: Faker::Number.between(from: 1, to: 50))
# end


# Review.destroy_all

# 250.times do |index|
#   Review.create!(author: Faker::Name.unique.name, rating: Faker::Number.between(from: 1, to: 5).to_i, content: Faker::Lorem.paragraph_by_chars(number: 50), product_id: Faker::Number.between(from: 1, to: 50))
# end

p "Created #{Product.count} products and #{Review.count} reviews"