class Supplier < ApplicationRecord
  belongs_to :User
  validates :Supplier_id, presence: true, uniqueness: true
end
