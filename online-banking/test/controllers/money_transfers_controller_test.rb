require 'test_helper'

class MoneyTransfersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get money_transfers_index_url
    assert_response :success
  end

  test "should get create" do
    get money_transfers_create_url
    assert_response :success
  end

end
