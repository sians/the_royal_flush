# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating users .........."
User.create(email: "1234@gmail.com", password: "Password", full_name: "One TT Four")
User.create(email: "JP@gmail.com", password: "Password", full_name: "J Peas")
User.create(email: "jonsnow@gmail.com", password: "Password", full_name: "Jon Snow")
User.create(email: "emily@gmail.com", password: "Password", full_name: "Emily")
User.create(email: "ipfreely@gmail.com", password: "Password", full_name: "IP Freely")
User.create(email: "man-ur@gmail.com", password: "Password", full_name: "Man UR")
User.create(email: "DTM@gmail.com", password: "Password", full_name: "Dennis the Menace")
User.create(email: "Batmuma@gmail.com", password: "Password", full_name: "Bat Muma")
User.create(email: "cheat-r@gmail.com", password: "Password", full_name: "Cheat R")
User.create(email: "Nida@gmail.com", password: "Password", full_name: "Nida Jit")
User.create(email: "f_hart@gmail.com", password: "Password", full_name: "F Hart")
User.create(email: "Thad@gmail.com", password: "Password", full_name: "Wuotta Thad")
puts "Users...done!"
