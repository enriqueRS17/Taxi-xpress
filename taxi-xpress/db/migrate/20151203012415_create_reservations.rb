class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :reserved_at
      t.integer :car_type
      t.integer :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
