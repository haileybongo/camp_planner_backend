class AddTripIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :trip_id, :integer
  end
end
