class AddBeerIdAndSizeToMachines < ActiveRecord::Migration[5.2]
  def change
    add_column :machines, :beer_id, :integer
    add_column :machines, :size, :integer
  end
end
