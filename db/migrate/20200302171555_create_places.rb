class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :average_rating
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.references :city, foreign_key: true
      t.references :category, foreign_key: true
      t.string :slug

      t.timestamps
    end
  end
end
