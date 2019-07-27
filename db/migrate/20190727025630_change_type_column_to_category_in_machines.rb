class ChangeTypeColumnToCategoryInMachines < ActiveRecord::Migration[5.2]
  def change
    remove_column :machines, :type
    add_column :machines, :category, :integer
  end
end
