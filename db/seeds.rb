# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ユーザー

# 1
User.create!(
  account_name: 'trasto',
  display_name: '公式アカウント',
  email: 'trasto@trasto.com',
  password: '111111',
  password_confirmation: '111111',
  introduction: "公式アカウントです",
  avatar: open("#{Rails.root}/db/fixtures/user/trasto.png"),
  admin: true,
  activated: true,
  activated_at: Time.zone.now
)