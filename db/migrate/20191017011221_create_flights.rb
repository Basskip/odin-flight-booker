class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.datetime :start
      t.integer :duration

      t.timestamps
    end
  end
end
