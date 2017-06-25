class CreateMoneyTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :money_transfers do |t|
      t.integer :requester_id, null: false
      t.integer :receiver_id, null: false
      t.float :amount, null: false

      t.timestamps
    end
  end
end
