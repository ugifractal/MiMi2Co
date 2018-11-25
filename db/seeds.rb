# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Club Model seed
# 5.times do
#   Club.create([{
#     name: Faker::SiliconValley.company,
#     description: Faker::SiliconValley.motto,
#     city: Faker::Address.city,
#     country: Faker::Address.country,
#     club_type_id: Faker::Number.between(1, 2),
#     start_date: Faker::Date.between(1000.days.ago, 50.days.ago),
#     address: Faker::Address.full_address,
#     district: Faker::Number.number(2),
#     division: Faker::Number.number(2),
#     area: Faker::Number.number(2),
#     registration_number: Faker::Number.number(5),
#     website: Faker::Internet.url,
#     email: Faker::Internet.email,
#     mission: Faker::SiliconValley.invention,
#     display_name: Faker::SiliconValley.company,
#     role_rank_id: Faker::Number.between(1, 2)
#     }])
# end

#Club Status Model seed
# 2.times do
# ClubType.create([{
#   name: Faker::Lorem.characters(5),
#   description: Faker::SiliconValley.invention,
#   }])
# end

#User Model seed
# 5.times do
#   User.create([{
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     display_name: Faker::Name.name,
#     dob: Faker::Date.between(20000.days.ago, 10000.days.ago),
#     start_date: Faker::Date.between(1000.days.ago, 50.days.ago),
#     user_type_id: Faker::Number.between(1, 2),
#     mobile: Faker::Number.number(5),
#     comments: Faker::SiliconValley.invention
#     }])
# end
#
# #User Type Model seed
# 2.times do
# UserType.create([{
#   name: Faker::Lorem.characters(5),
#   description: Faker::SiliconValley.invention,
#   }])
# end
