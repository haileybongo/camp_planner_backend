class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :location
      t.string :campground
      t.date :arrival
      t.date :departure
      t.integer :item_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
