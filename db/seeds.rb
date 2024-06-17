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
omamori1 = Omamori.create(
  name: "IT",
  jinja: "神田明神",
  color: "緑",
  photo_url: "https://actindi.net/wp-content/uploads/2019/01/IMG_1119.jpg"
)

omamori2 = Omamori.create(
  name: "縁結び",
  jinja: "今戶神社",
  color: "黄色",
  photo_url: "https://res.cloudinary.com/dtpr5icvx/image/upload/v1717770108/b65nrh9w3m5t6pwvm4df.jpg"
)

omamori3 = Omamori.create(
  name: "縁結び",
  jinja: "陽運寺",
  color: "ピンク",
  photo_url: "https://res.cloudinary.com/dtpr5icvx/image/upload/v1717770108/kpoeybdoiip9eqiiorsd.jpg"
)
