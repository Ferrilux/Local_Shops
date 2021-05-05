class Product < ApplicationRecord
  has_and_belongs_to_many :orders, :join_table => :order_products
  belongs_to :Supplier
  validates :Product_id, presence: true, uniqueness: true
end
