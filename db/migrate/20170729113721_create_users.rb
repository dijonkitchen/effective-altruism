class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.decimal :annual_income, null: false
      t.decimal :pledge_percentage

      t.timestamps
    end
  end
end
