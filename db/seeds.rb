# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(
  first_name: "dan",
  last_name: "White",
  email: "dan@dan.com",
  password_digest: "password",
  age: 22,
)
user.save!

Vitamin.create!(
  [{ name: "Vitamin B1", image_url: "https://www.nutritionadvance.com/wp-content/uploads/2020/11/thiamin-foods.jpg",
     used_for: "Helps convert food into energy and is\ncritical for nerve function",
     images: "https://previews.123rf.com/images/svshot/svshot1802/svshot180200037/96264324-gold-pill-capsule-or-gold-drop-with-vitamin-b1-on-a-transparent-background-medical-template-.jpg",
     deficiency: "Fatigue, depression, irritability, headache, nausea, abdominal discomfort, trouble digesting carbohydrates." }]
)
# vitamin.save!
