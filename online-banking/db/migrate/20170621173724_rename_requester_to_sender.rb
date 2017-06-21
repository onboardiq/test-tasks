class RenameRequesterToSender < ActiveRecord::Migration[5.1]
  def change
    rename_column :money_transfers, :requester_id, :sender_id
  end
end
