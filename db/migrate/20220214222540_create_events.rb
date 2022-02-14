class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :venue_id
      t.integer :user_id
      t.date :date
      t.string :event_type
      t.integer :attendees
      t.integer :price
    end
  end
end
