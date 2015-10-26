require 'test_helper'

class VendorDetailsControllerTest < ActionController::TestCase
  setup do
    @vendor_detail = vendor_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendor_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor_detail" do
    assert_difference('VendorDetail.count') do
      post :create, vendor_detail: { vendor_address: @vendor_detail.vendor_address, vendor_comment: @vendor_detail.vendor_comment, vendor_email: @vendor_detail.vendor_email, vendor_id: @vendor_detail.vendor_id, vendor_name: @vendor_detail.vendor_name, vendor_telephone: @vendor_detail.vendor_telephone }
    end

    assert_redirected_to vendor_detail_path(assigns(:vendor_detail))
  end

  test "should show vendor_detail" do
    get :show, id: @vendor_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor_detail
    assert_response :success
  end

  test "should update vendor_detail" do
    put :update, id: @vendor_detail, vendor_detail: { vendor_address: @vendor_detail.vendor_address, vendor_comment: @vendor_detail.vendor_comment, vendor_email: @vendor_detail.vendor_email, vendor_id: @vendor_detail.vendor_id, vendor_name: @vendor_detail.vendor_name, vendor_telephone: @vendor_detail.vendor_telephone }
    assert_redirected_to vendor_detail_path(assigns(:vendor_detail))
  end

  test "should destroy vendor_detail" do
    assert_difference('VendorDetail.count', -1) do
      delete :destroy, id: @vendor_detail
    end

    assert_redirected_to vendor_details_path
  end
end
