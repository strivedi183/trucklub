class AddEatersTable < ActiveRecord::Migration
  def change
    create_table :eaters do |t|
      t.string :location
      t.timestamps
    end
  end
end
