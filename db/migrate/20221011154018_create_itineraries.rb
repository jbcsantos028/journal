class CreateItineraries < ActiveRecord::Migration[6.1]
  def change
    create_table :itineraries do |t|
      t.string :location
      t.text :detail

      t.timestamps
    end
  end
end
