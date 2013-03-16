class AddTrucksTable < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :title
      t.text :description
      t.string :twitter
      t.string :phone
      t.timestamps
    end
  end
end
