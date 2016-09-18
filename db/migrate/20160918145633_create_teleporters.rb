class CreateTeleporters < ActiveRecord::Migration
  def change
    create_table :teleporters do |t|
      t.references :destination, index: true, foreign_key: true
      t.integer :capacity, default: 3

      t.timestamps null: false
    end
  end
end
