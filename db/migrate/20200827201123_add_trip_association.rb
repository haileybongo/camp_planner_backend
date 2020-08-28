class AddTripAssociation < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :item, foreign_key: true
  end
end
