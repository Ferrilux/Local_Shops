class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :Payment_id
      t.date :Payment_Date
      t.decimal :Amount

      t.timestamps
    end
  end
end
