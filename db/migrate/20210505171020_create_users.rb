class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :User_id
      t.string :Email
      t.string :Password

      t.timestamps
    end
  end
end
