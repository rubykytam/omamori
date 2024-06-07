# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
Omamori.destroy_all
omamori1 = Omamori.new(name: "IT", jinja:"神田明神",tags:["紙"],color:"緑")
photo1 = URI.open("https://actindi.net/wp-content/uploads/2019/01/IMG_1119.jpg")
omamori1.photos.attach(io: photo1, filename: "omamori.jpg", content_type: "image/jpg")
omamori1.save

omamori2 = Omamori.new(name: "縁結び", jinja:"今戶神社",tags:["巾著"],color:"黄色")
photo2 = URI.open("https://res.cloudinary.com/dtpr5icvx/image/upload/v1717770108/b65nrh9w3m5t6pwvm4df.jpg")
omamori2.photos.attach(io: photo2, filename: "omamor2.jpg", content_type: "image/jpg")
omamori2.save

omamori3 = Omamori.new(name: "縁結び", jinja:"陽運寺",tags:["巾著","小さい"],color:"ピンク")
photo3 = URI.open("https://res.cloudinary.com/dtpr5icvx/image/upload/v1717770108/kpoeybdoiip9eqiiorsd.jpg")
omamori3.photos.attach(io: photo3, filename: "omamor3.jpg", content_type: "image/jpg")
omamori3.save
