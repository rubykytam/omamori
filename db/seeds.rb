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
Omamori.destory_all
omamori1 = Omamori.new(name: "testing1", jinja:"jinja1")
photo1 = URI.open("https://actindi.net/wp-content/uploads/2019/01/IMG_1119.jpg")
omamori1.photos.attach(io: photo1, filename: "omamori.jpg", content_type: "image/jpg")
omamori1.save
