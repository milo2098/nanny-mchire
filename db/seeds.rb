# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Grandparent.destroy_all
User.destroy_all
user1 = User.create!(first_name: "James", last_name: "Smith", username: "james_k_s", email: "kayshuttleworthjames@gmail.com", password: "password123")
user2 = User.create!(first_name: "John", last_name: "Doe", username: "john_doe", email: "john@doe.com", password: "password123")
user3 = User.create!(first_name: "Jane", last_name: "Doe", username: "jane_doe", email: "jade@doe.com", password: "password123")
user4 = User.create!(first_name: "Milo", last_name: "Vingoe", username: "milo_vingoe", email: "milo@vingoe.com", password: "password123")

Grandparent.create!(skill: "Grardening", description: "I can help you with your garden", price: 20, experience: 5, user: user1)
Grandparent.create!(skill: "Cooking", description: "I can cook you a delicious meal", price: 30, experience: 10, user: user2)
Grandparent.create!(skill: "Baking", description: "I can bake you a delicious cake", price: 25, experience: 8, user: user3)
Grandparent.create!(skill: "Knitting", description: "I can teach you how to knit", price: 15, experience: 3, user: user4)
