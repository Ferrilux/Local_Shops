class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.integer :Supplier_id
      t.references :User, null: false, foreign_key: true
      t.integer :Office_Code
      t.string :Last_Name
      t.string :First_Name

      t.timestamps
    end
  end
end
