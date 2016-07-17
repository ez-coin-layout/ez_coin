require 'test_helper'

class Admin::DepositRequestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
