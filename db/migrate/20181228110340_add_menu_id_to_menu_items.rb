class AddMenuIdToMenuItems < ActiveRecord::Migration[5.2]
  def change
    add_column :menu_items, :menu_id, :integer
  end
end
