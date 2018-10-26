# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
lab = Array.new()
# 15.times do
#   lab << Faker::Japanese::Name.last_name # https://github.com/tily/ruby-faker-japanese
# end

lab = ["長田・谷口","玉城","和田","長山","名嘉村","遠藤","山田","赤嶺","河野","岡崎","吉田","姜","宮里","國田","當間"]

60.times do |n|
  email = Faker::Internet.email
  gpa = format("%.2f",rand(0.0..3.9)).to_f
  password = "password"
  User.create!(id: n+1,
               ie_number: "0057#{sprintf("%02d",n+1)}",
               email: email,
               gpa: gpa,
               lab: lab.sample,
               password: password,
               password_confirmation: password,
               )
end
