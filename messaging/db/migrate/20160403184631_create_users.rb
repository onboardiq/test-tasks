class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :account, index: true

      t.string :email
      t.string :name
      t.string :time_zone

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :time_zone
  end
end
