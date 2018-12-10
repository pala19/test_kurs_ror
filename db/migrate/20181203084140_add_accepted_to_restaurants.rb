class AddAcceptedToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :accepted, :boolean
  end
end
