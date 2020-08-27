class Trip < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :item, :dependent => :destroy, optional: false 
end
