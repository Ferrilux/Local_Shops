class Payment < ApplicationRecord
    validates :Payment_id, presence: true, uniqueness: true
end
