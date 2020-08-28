class AddItemIdToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :item_id, :integer
  end
end
