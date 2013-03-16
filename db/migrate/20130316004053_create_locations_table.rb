class CreateLocationsTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.date  :location_date
      t.time  :arrival_time
      t.time  :departure_time
      t.string  :address
      t.float   :latitude
      t.float   :longitude
      t.integer :truck_id
      t.string  :secret_code
      t.timestamps
    end
  end
end
