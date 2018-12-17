class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.timestamp :begin
      t.timestamp :end

      t.timestamps
    end
  end
end
