class CreateOmamoris < ActiveRecord::Migration[7.1]
  def change
    create_table :omamoris do |t|
      t.string :name
      t.string :jinja
      t.string :address
      t.integer :price
      t.date :buying_date
      t.string :tags
      t.string :color
      t.string :rieki

      t.timestamps
    end
  end
end
