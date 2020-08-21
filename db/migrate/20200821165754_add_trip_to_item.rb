class AddTripToItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :trip, foreign_key: true
  end
end
