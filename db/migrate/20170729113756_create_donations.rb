class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :user_id, null: false
      t.decimal :amount, null: false

      t.timestamps
    end
  end
end
