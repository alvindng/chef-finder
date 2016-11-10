# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  [ "gary@test.com", "Gary", "312-312-1321", "123 Fake St", "welcome" ],
  [ "lucy@test.com", "Lucy", "312-312-2321", "1234 Fake St", "welcome" ],
  [ "ricky@test.com", "Ricky", "312-312-3321", "1235 Fake St", "welcome" ],
  [ "barry@test.com", "Barry", "312-312-4321", "1236 Fake St", "welcome" ],
  [ "larry@test.com", "Larry", "312-312-5321", "1237 Fake St", "welcome" ],
]

user_list.each do |email, name, phone, address, password|
  User.create( email: email, name: name, phone: phone, address: address, password: password)
end
specialty_list = [
  "African",
  "American",
  "British",
  "Carribean",
  "Chinese",
  "East European",
  "French",
  "Greek",
  "Indian",
  "Irish",
  "Italian",
  "Japanese",
  "Korean",
  "Mexican",
  "Nordic",
  "North African",
  "Portuguese",
  "South African",
  "Spanish",
  "Thai and South-East Asian",
  "Turkish and Middle Eastern"
]

specialty_list.each do |name|
  Specialty.create(name: name)

end
