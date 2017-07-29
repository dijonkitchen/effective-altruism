# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(
  email: "user1@example.com",
  password: "password",
  annual_income: 100000.00,
  pledge_percentage: 0.10
)

user2 = User.create(
  email: "user2@example.com",
  password: "password",
  annual_income: 130000.00,
  pledge_percentage: 0.01
)

user1.donations.create(amount: 1000.00)
user1.donations.create(amount: 2000.00)

user2.donations.create(amount: 10.00)
user2.donations.create(amount: 11.00)
user2.donations.create(amount: 10.20)
