class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :location
      t.string :campground
      t.date :arrival
      t.date :departure

      t.timestamps
    end
  end
end
