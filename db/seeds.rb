# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a admin user.
User.create!(name: "Test",
    email: "test@gmail.com",
    password: "1234567",
    password_confirmation: "1234567",
    admin: true)

# Generate 99 users (not admin).
99.times do |n|
    name = Faker::Name.name
    email = "test-#{n+1}@gmail.com"
    password = "1234567"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
end

# Notes for users.
users = User.order(:created_at).take(6)
50.times do
    content = Faker::Lorem.sentence(word_count: 5)
    users.each { |user| user.notes.create!(content: content) }
end
