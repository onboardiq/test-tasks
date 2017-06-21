class MoneyTransfersController < ApplicationController
  before_action :authenticate_user!

  def index
    @money_transfers = MoneyTransfer.all
    # TODO
  end

  def create
    # TODO    
  end
end
