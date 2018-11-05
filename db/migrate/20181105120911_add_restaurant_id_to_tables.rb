class AddRestaurantIdToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :restaurant_id, :integer
  end
end
