class CreateOrderProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :order_products, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true
      t.integer :Quantity
    end
  end
end
