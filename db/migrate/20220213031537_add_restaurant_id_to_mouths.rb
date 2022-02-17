class AddRestaurantIdToMouths < ActiveRecord::Migration[7.0]
  def change
    add_column :mouths, :restaurant_id, :integer
  end
end
