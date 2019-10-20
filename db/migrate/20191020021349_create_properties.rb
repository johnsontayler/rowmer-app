class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :type
      t.integer :bathrooms
      t.integer :sq_feet
      t.string :description
      t.string :photo
      t.integer :property_manager_id

      t.timestamps
    end
  end
end
