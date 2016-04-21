class User < ActiveRecord::Base
  belongs_to :account
  validates  :account, presence: true

  has_many :sms_messages

  # Skip all the Devise stuff for now

  validates :name, presence: true

  validates :email, presence: true, uniqueness: true
end
