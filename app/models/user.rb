class User < ApplicationRecord
    validates :User_id, presence: true, uniqueness: true
    validates :Email, presence: true, uniqueness: true, length: { in: 5..50 }
    has_secure_password
    validates :password, presence: true, length: { minimum: 8 }
    has_secure_token

    def invalidate_token
        self.update_columns(token: nil)
    end

end
