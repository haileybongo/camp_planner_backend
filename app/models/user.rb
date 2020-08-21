class User < ApplicationRecord
    has_many :trips
    validates :username, presence: true, uniqueness: true
    has_secure_password

end
