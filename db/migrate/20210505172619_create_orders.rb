class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :Order_id
      t.references :Customer, null: false, foreign_key: true
      t.references :Payment, null: false, foreign_key: true
      t.date :Order_Date
      t.string :Status
      t.string :Comments

      t.timestamps
    end
  end
end
