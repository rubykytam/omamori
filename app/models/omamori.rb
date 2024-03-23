class Omamori < ApplicationRecord
  t.string :tags, array: true
  has_many_attached :photos
end
