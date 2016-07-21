require 'test_helper'

class Default::DepositRequestsControllerTest < ActionController::TestCase
  setup do
    @default_deposit_request = default_deposit_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:default_deposit_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create default_deposit_request" do
    assert_difference('Default::DepositRequest.count') do
      post :create, default_deposit_request: { amount: @default_deposit_request.amount, request_point: @default_deposit_request.request_point, status: @default_deposit_request.status, user_id: @default_deposit_request.user_id }
    end

    assert_redirected_to default_deposit_request_path(assigns(:default_deposit_request))
  end

  test "should show default_deposit_request" do
    get :show, id: @default_deposit_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @default_deposit_request
    assert_response :success
  end

  test "should update default_deposit_request" do
    patch :update, id: @default_deposit_request, default_deposit_request: { amount: @default_deposit_request.amount, request_point: @default_deposit_request.request_point, status: @default_deposit_request.status, user_id: @default_deposit_request.user_id }
    assert_redirected_to default_deposit_request_path(assigns(:default_deposit_request))
  end

  test "should destroy default_deposit_request" do
    assert_difference('Default::DepositRequest.count', -1) do
      delete :destroy, id: @default_deposit_request
    end

    assert_redirected_to default_deposit_requests_path
  end
end
