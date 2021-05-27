class Customer < ApplicationRecord
  belongs_to :User
  has_many :orders
  validates :Customer_id, presence: true, uniqueness: true
end
