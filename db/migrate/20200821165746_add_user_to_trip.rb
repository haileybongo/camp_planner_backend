class AddUserToTrip < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :user, foreign_key: true
  end
end
