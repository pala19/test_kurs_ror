# frozen_string_literal: true

class CreateRestorers < ActiveRecord::Migration[5.2]
  def change
    create_table :restorers do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
