class AddMealsTable < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :meal_date
      t.time :meal_time
      t.integer :eater_id
      t.integer :truck_id
      t.timestamps
    end
  end
end
