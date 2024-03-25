
class Omamori < ApplicationRecord

  has_many_attached :photos

  def photo_urls
    photos.map { |photo| Cloudinary::Utils.cloudinary_url(photo.key) }
  end
end
