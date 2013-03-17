class AddImageToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :image_url, :string
  end
end
