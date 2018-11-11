# frozen_string_literal: true

class AddRestorerIdToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :restorer_id, :integer
  end
end
