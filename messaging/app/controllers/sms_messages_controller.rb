class SmsMessagesController < ApplicationController
  def index
    @sms_messages = @account.sms_messages.sorted.includes([:user, :account]).all
  end
end
