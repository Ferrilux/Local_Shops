class Order < ApplicationRecord
  has_and_belongs_to_many :products, :join_table => :order_products
  belongs_to :Customer
  belongs_to :Payment
  validates :Order_id, presence: true, uniqueness: true
end
