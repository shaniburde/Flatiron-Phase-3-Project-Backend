class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :address
      t.string :phone
      t.integer :capacity
    end
  end
end
