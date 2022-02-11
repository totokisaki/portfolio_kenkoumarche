class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :store_name
      t.string :address
      t.string :genre
      t.binary :store_image
      t.integer :price
      t.integer :user_id
      t.integer :mouth_id

      t.timestamps
    end
  end
end
