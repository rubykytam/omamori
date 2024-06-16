class AddPhotoUrlToOmamoris < ActiveRecord::Migration[7.1]
  def change
    add_column :omamoris, :photo_url, :string
  end
end
