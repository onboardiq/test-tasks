class MoneyTransfersController < ApplicationController
  before_action :authenticate_user!

  def index
    # TODO
    @money_transfers = MoneyTransfer.all
  end

  def create
    # TODO
  end
end
