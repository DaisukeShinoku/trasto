# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@admin.com',
  password: '111111',
  password_confirmation: '111111'
)

User.create!(
  account_name: 'testuser',
  display_name: 'TEST USER',
  email: 'test@test.com',
  password: '111111',
  password_confirmation: '111111'
)