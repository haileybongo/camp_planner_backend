class Item < ApplicationRecord
    has_many :trips, dependent: :destroy
end
