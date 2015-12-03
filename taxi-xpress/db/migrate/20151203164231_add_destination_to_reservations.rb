class AddDestinationToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :destination, :string
  end
end
