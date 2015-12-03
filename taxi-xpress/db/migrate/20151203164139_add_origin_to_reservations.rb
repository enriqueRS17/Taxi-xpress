class AddOriginToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :origin, :string
  end
end
