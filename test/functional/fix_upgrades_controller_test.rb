require 'test_helper'

class FixUpgradesControllerTest < ActionController::TestCase
  setup do
    @fix_upgrade = fix_upgrades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fix_upgrades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fix_upgrade" do
    assert_difference('FixUpgrade.count') do
      post :create, fix_upgrade: { dateof_work: @fix_upgrade.dateof_work, detail_fix_upgrade: @fix_upgrade.detail_fix_upgrade, kurupan_no: @fix_upgrade.kurupan_no, payment: @fix_upgrade.payment }
    end

    assert_redirected_to fix_upgrade_path(assigns(:fix_upgrade))
  end

  test "should show fix_upgrade" do
    get :show, id: @fix_upgrade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fix_upgrade
    assert_response :success
  end

  test "should update fix_upgrade" do
    put :update, id: @fix_upgrade, fix_upgrade: { dateof_work: @fix_upgrade.dateof_work, detail_fix_upgrade: @fix_upgrade.detail_fix_upgrade, kurupan_no: @fix_upgrade.kurupan_no, payment: @fix_upgrade.payment }
    assert_redirected_to fix_upgrade_path(assigns(:fix_upgrade))
  end

  test "should destroy fix_upgrade" do
    assert_difference('FixUpgrade.count', -1) do
      delete :destroy, id: @fix_upgrade
    end

    assert_redirected_to fix_upgrades_path
  end
end
