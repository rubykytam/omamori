class RemoveColumnsFromOmamoris < ActiveRecord::Migration[7.1]
  def change
    remove_column :omamoris, :address, :string
    remove_column :omamoris, :price, :integer
    remove_column :omamoris, :buying_date, :date
    remove_column :omamoris, :tags, :string, array: true
    remove_column :omamoris, :color, :string
    remove_column :omamoris, :rieki, :string
  end
end
