# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.create(roomnum: 100, bedrooms: 1, bathrooms: 1, size: 200, capacity: 1, cost: 100)
Room.create(roomnum: 101, bedrooms: 1, bathrooms: 1, size: 150, capacity: 1, cost: 90)
Room.create(roomnum: 102, bedrooms: 1, bathrooms: 1, size: 170, capacity: 1, cost: 95)
Room.create(roomnum: 200, bedrooms: 1, bathrooms: 1, size: 250, capacity: 2, cost: 130)
Room.create(roomnum: 201, bedrooms: 1, bathrooms: 1, size: 250, capacity: 2, cost: 130)
Room.create(roomnum: 202, bedrooms: 1, bathrooms: 1, size: 300, capacity: 2, cost: 150)
Room.create(roomnum: 300, bedrooms: 2, bathrooms: 1, size: 350, capacity: 3, cost: 175)
Room.create(roomnum: 301, bedrooms: 2, bathrooms: 2, size: 400, capacity: 3, cost: 200)
Room.create(roomnum: 400, bedrooms: 2, bathrooms: 2, size: 450, capacity: 4, cost: 230)
Room.create(roomnum: 401, bedrooms: 2, bathrooms: 2, size: 500, capacity: 4, cost: 260)

Guest.create(name: "Deborah Dooley", room_id: 4)
Guest.create(name: "Howard Dooley", room_id: 4)
Guest.create(name: "Jamila Jamoola", room_id: 1)
Guest.create(name: "Quiche Stevens", room_id: 2)

