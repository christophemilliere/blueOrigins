class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :departure
      t.string :arrival

      t.timestamps null: false
    end
  end
end
