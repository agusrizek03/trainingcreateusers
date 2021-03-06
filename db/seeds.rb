# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: :admin)
Role.create(name: :client)

user1 = User.create(email: 'admin@gmail.com', password: 'admin1')
user1.add_role(:admin)

user2 = User.create(email: 'client1@gmail.com', password: 'client1')
user2.add_role(:client)
