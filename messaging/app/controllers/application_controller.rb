class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :stub_user!

  protected

  def stub_user!
    @account = Account.first
    @user    = @account.users.first
  end
end
