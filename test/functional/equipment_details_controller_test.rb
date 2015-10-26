require 'test_helper'

class EquipmentDetailsControllerTest < ActionController::TestCase
  setup do
    @equipment_detail = equipment_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_detail" do
    assert_difference('EquipmentDetail.count') do
      post :create, equipment_detail: { EqmType_id: @equipment_detail.EqmType_id, Eqm_SN1: @equipment_detail.Eqm_SN1, Eqm_SN2: @equipment_detail.Eqm_SN2, Eqm_SN3: @equipment_detail.Eqm_SN3, Eqm_SN4: @equipment_detail.Eqm_SN4, ICT_price: @equipment_detail.ICT_price, bidding_price: @equipment_detail.bidding_price, delivery_no: @equipment_detail.delivery_no, emp_brand: @equipment_detail.emp_brand, emp_version: @equipment_detail.emp_version, kurupan_no: @equipment_detail.kurupan_no, mornitor_SN1: @equipment_detail.mornitor_SN1, mornitor_SN2: @equipment_detail.mornitor_SN2, mornitor_brand: @equipment_detail.mornitor_brand, mornitor_version: @equipment_detail.mornitor_version, project_id: @equipment_detail.project_id, quaintity_emp: @equipment_detail.quaintity_emp, receipt_no: @equipment_detail.receipt_no, record_date: @equipment_detail.record_date, record_person: @equipment_detail.record_person, remakes: @equipment_detail.remakes, running_no: @equipment_detail.running_no, spec_cpu: @equipment_detail.spec_cpu, spec_hd: @equipment_detail.spec_hd, spec_ram: @equipment_detail.spec_ram, status_detail: @equipment_detail.status_detail, user_name: @equipment_detail.user_name, vendor_id: @equipment_detail.vendor_id }
    end

    assert_redirected_to equipment_detail_path(assigns(:equipment_detail))
  end

  test "should show equipment_detail" do
    get :show, id: @equipment_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_detail
    assert_response :success
  end

  test "should update equipment_detail" do
    put :update, id: @equipment_detail, equipment_detail: { EqmType_id: @equipment_detail.EqmType_id, Eqm_SN1: @equipment_detail.Eqm_SN1, Eqm_SN2: @equipment_detail.Eqm_SN2, Eqm_SN3: @equipment_detail.Eqm_SN3, Eqm_SN4: @equipment_detail.Eqm_SN4, ICT_price: @equipment_detail.ICT_price, bidding_price: @equipment_detail.bidding_price, delivery_no: @equipment_detail.delivery_no, emp_brand: @equipment_detail.emp_brand, emp_version: @equipment_detail.emp_version, kurupan_no: @equipment_detail.kurupan_no, mornitor_SN1: @equipment_detail.mornitor_SN1, mornitor_SN2: @equipment_detail.mornitor_SN2, mornitor_brand: @equipment_detail.mornitor_brand, mornitor_version: @equipment_detail.mornitor_version, project_id: @equipment_detail.project_id, quaintity_emp: @equipment_detail.quaintity_emp, receipt_no: @equipment_detail.receipt_no, record_date: @equipment_detail.record_date, record_person: @equipment_detail.record_person, remakes: @equipment_detail.remakes, running_no: @equipment_detail.running_no, spec_cpu: @equipment_detail.spec_cpu, spec_hd: @equipment_detail.spec_hd, spec_ram: @equipment_detail.spec_ram, status_detail: @equipment_detail.status_detail, user_name: @equipment_detail.user_name, vendor_id: @equipment_detail.vendor_id }
    assert_redirected_to equipment_detail_path(assigns(:equipment_detail))
  end

  test "should destroy equipment_detail" do
    assert_difference('EquipmentDetail.count', -1) do
      delete :destroy, id: @equipment_detail
    end

    assert_redirected_to equipment_details_path
  end
end
