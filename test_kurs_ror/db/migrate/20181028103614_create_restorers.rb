class CreateRestorers < ActiveRecord::Migration[5.2]
  def change
    create_table :restorers do |t|
      t.string :name

      t.timestamps
    end
  end
end
