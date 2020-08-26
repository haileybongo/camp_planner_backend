class Trip < ApplicationRecord
    belongs_to :user, optional: true
    has_one :item, dependent: :destroy
end
