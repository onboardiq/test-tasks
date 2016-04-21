class CreateSmsMessages < ActiveRecord::Migration
  def change
    create_table :sms_messages do |t|
      t.references :account, index: true
      t.references :user, index: true

      t.string :from_number
      t.string :to_number
      t.text :body

      t.boolean :outbound, null: false, default: false
      t.boolean :unread, null: false, default: true

      t.timestamps
    end

    add_index :sms_messages, :from_number
    add_index :sms_messages, :to_number

    add_index :sms_messages, :created_at
  end
end
