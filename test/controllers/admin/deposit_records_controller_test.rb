require 'test_helper'

class Admin::DepositRecordsControllerTest < ActionController::TestCase
  setup do
    @admin_deposit_record = admin_deposit_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_deposit_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_deposit_record" do
    assert_difference('Admin::DepositRecord.count') do
      post :create, admin_deposit_record: { add_point: @admin_deposit_record.add_point, amount: @admin_deposit_record.amount, deposit_method: @admin_deposit_record.deposit_method, deposit_request_id: @admin_deposit_record.deposit_request_id, user_id: @admin_deposit_record.user_id }
    end

    assert_redirected_to admin_deposit_record_path(assigns(:admin_deposit_record))
  end

  test "should show admin_deposit_record" do
    get :show, id: @admin_deposit_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_deposit_record
    assert_response :success
  end

  test "should update admin_deposit_record" do
    patch :update, id: @admin_deposit_record, admin_deposit_record: { add_point: @admin_deposit_record.add_point, amount: @admin_deposit_record.amount, deposit_method: @admin_deposit_record.deposit_method, deposit_request_id: @admin_deposit_record.deposit_request_id, user_id: @admin_deposit_record.user_id }
    assert_redirected_to admin_deposit_record_path(assigns(:admin_deposit_record))
  end

  test "should destroy admin_deposit_record" do
    assert_difference('Admin::DepositRecord.count', -1) do
      delete :destroy, id: @admin_deposit_record
    end

    assert_redirected_to admin_deposit_records_path
  end
end
