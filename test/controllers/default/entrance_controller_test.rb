require 'test_helper'

class Default::EntranceControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
