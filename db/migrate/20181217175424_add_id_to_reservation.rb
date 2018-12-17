class AddIdToReservation < ActiveRecord::Migration[5.2]
  def change
    add_index :reservations, :id
  end
end
