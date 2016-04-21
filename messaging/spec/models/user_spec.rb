require 'rails_helper'

RSpec.describe User, type: :model do
  it { should belong_to(:account) }
  it { should validate_presence_of(:account) }

  it { should have_many(:sms_messages) }

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
end
