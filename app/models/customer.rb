class Customer < ApplicationRecord
  belongs_to :User
  validates :Customer_id, presence: true, uniqueness: true
end
