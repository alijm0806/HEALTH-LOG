# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(
  first_name: "max",
  last_name: "White",
  email: "max@max.com",
  password_digest: "password",
  age: 22,
)
user.save!

Vitamin.create!(
  [{ name: "Vitamin B2", image_url: "https://i0.wp.com/curejoy.com/wp-content/uploads/2018/05/Foods-rich-in-vitamin-b2.jpg?fit=1200%2C627&ssl=1", used_for: "Helps convert food into energy and\nsupports healthy skin, hair, blood & brain",
     images: "https://st2.depositphotos.com/7341970/10438/v/950/depositphotos_104389176-stock-illustration-vitamin-b2-letter-shape.jpg",
     deficiency: "Redness and swelling of the lining of the throat and mouth, sore throat, sores or cracks in the corners of the mouth and the lips, inflamed and red tongue, skin disorders." },
   { name: "Vitamin B7", image_url: "https://shopgiejo.com/wp-content/uploads/2022/02/THE-BEST-DIETARY-SOURCES-OF-BIOTIN-VITAMIN-B7-min-scaled.jpg",
     used_for: "Helps convert food to energy & break\ndown glucose",
     images: "https://st2.depositphotos.com/7341970/10438/v/950/depositphotos_104389338-stock-illustration-vitamin-b7-letter-shape.jpg",
     deficiency: "Nausea, Anorexia, Depression, hallucination." }]

)

Doctor.create!(
  [{ name: "jhon",
     address: "",
     speciality: "orthopedic",
     image_url: "https://cdn4.iconfinder.com/data/icons/medical-worker-avatar-1/64/orthopedic_doctor_bone_surgeon_medical__avatar_people-512.png" },
   { name: "Janelle",
     address: "",
     speciality: "Dermatology",
     image_url: "https://cdn4.iconfinder.com/data/icons/medical-worker-avatar-1/64/dermatologist_doctor_dermatology_medical_skin_avatar_people-512.png" },
   { name: "",
     address: "",
     speciality: "Allergy and immunology",
     image_url: "https://myupchar-banner.s3.ap-south-1.amazonaws.com/widget/avatar/doctor-avatar-female.png" },
   { name: "",
     address: "",
     speciality: "Family medicine",
     image_url: "https://st2.depositphotos.com/1006318/5909/v/950/depositphotos_59095203-stock-illustration-medical-doctor-profile.jpg" },
   { name: "",
     address: "",
     speciality: "Urology", image_url: "https://cdn4.iconfinder.com/data/icons/medical-worker-avatar-1/64/urology_doctor_kidneys_ureters_bladder_avatar_people-512.png" }, { name: "", address: "", speciality: "Pathology", image_url: "https://thumbs.dreamstime.com/b/black-mix-icon-pathologist-pharmacology-experiment-medical-biochemist-diagnosis-160883648.jpg" },
   { name: "",
     address: "",
     speciality: "Psychiatry",
     image_url: "https://cdn3.iconfinder.com/data/icons/medical-avatars/128/06-512.png" },
   { name: "",
     address: "",
     speciality: "Surgery",
     image_url: "https://img.freepik.com/premium-psd/medical-surgeon-specialist-doctor-avatar-3d-illustration-3d-icon-editable-color-isolated_384205-553.jpg?w=2000" },
   { name: "",
     address: "",
     speciality: "Neurology",
     image_url: "https://previews.123rf.com/images/bsd555/bsd5552008/bsd555200801631/153733483-neurological-department-rgb-color-icon-neurological-science-and-surgery-brain-disorders-neurology-di.jpg" },
   { name: "",
     address: "",
     speciality: "Anesthesiology",
     image_url: "https://c8.alamy.com/comp/2DFJ8B6/anesthesiologist-medical-worker-color-icon-vector-illustration-2DFJ8B6.jpg" }]
)
