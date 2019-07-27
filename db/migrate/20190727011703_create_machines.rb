class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.integer :status
      t.integer :type
      t.references :location, foreign_key: true
    end
  end
end
