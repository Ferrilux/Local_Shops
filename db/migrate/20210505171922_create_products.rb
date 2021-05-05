class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :Product_id
      t.references :Supplier, null: false, foreign_key: true
      t.string :Name
      t.integer :Qty_in_Stock
      t.decimal :Buy_Price
      t.string :Description

      t.timestamps
    end
  end
end
