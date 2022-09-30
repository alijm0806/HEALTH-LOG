# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(
  first_name: "Mike",
  last_name: "White",
  email: "mike@mike.com",
  password_digest: "password",
)

Vitamin.create(
  [{ name: "Vitamin B1", image_url: "https://www.nutritionadvance.com/wp-content/uploads/2020/11/thiamin-foods.jpg",
     used_for: "Helps convert food into energy and is\ncritical for nerve function",
     images: "https://previews.123rf.com/images/svshot/svshot1802/svshot180200037/96264324-gold-pill-capsule-or-gold-drop-with-vitamin-b1-on-a-transparent-background-medical-template-.jpg",
     deficiency: "Fatigue, depression, irritability, headache, nausea, abdominal discomfort, trouble digesting carbohydrates." }, { name: "Vitamin B2", image_url: "https://i0.wp.com/curejoy.com/wp-content/uploads/2018/05/Foods-rich-in-vitamin-b2.jpg?fit=1200%2C627&ssl=1",
                                                                                                                                    used_for: "Helps convert food into energy and\nsupports healthy skin, hair, blood & brain",
                                                                                                                                    images: "https://st2.depositphotos.com/7341970/10438/v/950/depositphotos_104389176-stock-illustration-vitamin-b2-letter-shape.jpg",
                                                                                                                                    deficiency: "Redness and swelling of the lining of the throat and mouth, sore throat, sores or cracks in the corners of the mouth and the lips, inflamed and red tongue, skin disorders." }, { name: "Vitamin B7", image_url: "https://shopgiejo.com/wp-content/uploads/2022/02/THE-BEST-DIETARY-SOURCES-OF-BIOTIN-VITAMIN-B7-min-scaled.jpg",
                                                                                                                                                                                                                                                                                                                                  used_for: "Helps convert food to energy & break\ndown glucose",
                                                                                                                                                                                                                                                                                                                                  images: "https://st2.depositphotos.com/7341970/10438/v/950/depositphotos_104389338-stock-illustration-vitamin-b7-letter-shape.jpg",
                                                                                                                                                                                                                                                                                                                                  deficiency: "Nausea, Anorexia, Depression, hallucination." }]
)
