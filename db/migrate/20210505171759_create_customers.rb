class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.integer :Customer_id
      t.references :User, null: false, foreign_key: true
      t.string :First_Name
      t.string :Last_Name
      t.integer :Phone
      t.string :Address_1
      t.string :Address_2
      t.string :City
      t.integer :Postal_Code

      t.timestamps
    end
  end
end
