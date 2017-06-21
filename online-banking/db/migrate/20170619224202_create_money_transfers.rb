class CreateMoneyTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :money_transfers do |t|
      t.integer :requester_id, index: true, null: false
      t.integer :receiver_id, index: true, null: false
      t.float :amount, null: false

      t.timestamps
    end
  end
end
