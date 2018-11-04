class AddRestorerSurnameToRestorer < ActiveRecord::Migration[5.2]
  def change
    add_column :restorers, :surname, :string
  end
end
