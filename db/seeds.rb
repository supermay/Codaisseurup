# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

hobby = Category.create!(name: "Hobby")
it = Category.create!(name: "IT")
art = Category.create!(name: "Art")
work_skill = Category.create!(name: "Work Skill")
cooking = Category.create!(name: "Cooking")
sports = Category.create!(name: "Sports")


jiamei = User.create!(email:"wu_jiamei@outlook.com", password:"123456")
may = User.create!(email: "supermeitje@gmail.com", password:"123456")
chuday = User.create!(email: "chuday123456@gmail.com", password:"123456")
alex = User.create!(email: "alex888@gmail.com", password: "123456")



event1 = Event.create!(
name: "Codaisseur Open Evening",
description:"Introduction to Beginner Bootcamp and Traineeship",
location:"Amsterdam Singel 542",
price: 10,
capacity: 80,
includes_food: false,
includes_drinks: true,
starts_at: "07/04/2017 19:00",
ends_at: "07/04/2017 20:30",
user: jiamei,
categories: [it,work_skill]
 )

 event2 = Event.create!(
 name: "Painting Lessons",
 description:"Vermeer and Van Gogh",
 location:"Amsterdam Van Gogh Museum",
 price: 20,
 capacity: 20,
 includes_food: false,
 includes_drinks: true,
 starts_at: "07/04/2017 19:00",
 ends_at: "07/04/2017 20:30",
 user: chuday,
 categories: [art]
  )

  event3 = Event.create!(
  name: "Chinese Food Festival",
  description:"Learn Chinese Food Develpement and Try to Cook Mapo Tofu",
  location:"Amsterdam Fulu Madarijn Restaurant",
  price: 25,
  capacity: 50,
  includes_food: true,
  includes_drinks: true,
  starts_at: "07/04/2017 19:00",
  ends_at: "07/04/2017 20:30",
  user: may,
  categories: [cooking]
   )


   photo1 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346878/openevening3_t2xv8o.jpg", event: event1 )
   photo2 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346877/openevening1_dqjtmx.jpg", event: event1 )
   photo3 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346877/openevening2_tkhehn.jpg", event:event1)
   photo4 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346861/art1_woe1b8.jpg", event:event2 )
   photo5 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346862/art3_wz03hx.jpg", event:event2 )
   photo6 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346861/art2_mv8rwg.jpg" , event:event2 )
   photo8 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346877/cook3_fw0gk3.jpg", event:event3 )
   photo8 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346877/cook2_chrslm.jpg", event:event3 )
   photo9 = Photo.create!(remote_image_url: "https://res.cloudinary.com/supermay/image/upload/t_media_lib_thumb/v1499346861/cook1_kibrtw.jpg", event:event3 )
