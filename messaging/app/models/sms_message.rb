class SmsMessage < ActiveRecord::Base
  belongs_to :account
  validates :account, presence: true

  belongs_to :user

  scope :unread, -> { where(unread: true) }
  scope :outbound, -> { where(outbound: true) }
  scope :sorted, -> { order(created_at: :desc) }
end
