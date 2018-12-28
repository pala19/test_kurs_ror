class ChangeMenuItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :menu_items, :price, :price_cents
  end
end
