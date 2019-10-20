class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.references :room, foreign_key: true
      t.integer :buyer_id
      t.date :viewing_date
      t.time :viewing_time
      t.boolean :first_meeting_requested
      t.boolean :first_meeting_approved
      t.date :first_meeting_date
      t.time :first_meeting_time
      t.boolean :second_meeting_requested
      t.boolean :second_meeting_approved
      t.date :second_meeting_date
      t.time :second_meeting_time
      t.integer :offer_price
      t.boolean :offer_accepted

      t.timestamps
    end
  end
end
