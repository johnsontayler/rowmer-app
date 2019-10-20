class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :price
      t.boolean :for_sale
      t.string :photo
      t.string :description
      t.references :property, foreign_key: true
      t.integer :owner_id
      t.integer :tenant_id
      t.integer :agent_id

      t.timestamps
    end
  end
end
