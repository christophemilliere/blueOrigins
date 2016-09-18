class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.references :teleporter, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reservations, :name, unique: true
  end
end
