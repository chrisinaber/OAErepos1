require 'test_helper'

class ProjectDetailsControllerTest < ActionController::TestCase
  setup do
    @project_detail = project_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_detail" do
    assert_difference('ProjectDetail.count') do
      post :create, project_detail: { budgettype_id: @project_detail.budgettype_id, contract_date: @project_detail.contract_date, contract_id: @project_detail.contract_id, project_id: @project_detail.project_id, project_name: @project_detail.project_name, project_year: @project_detail.project_year, vender_id: @project_detail.vender_id }
    end

    assert_redirected_to project_detail_path(assigns(:project_detail))
  end

  test "should show project_detail" do
    get :show, id: @project_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_detail
    assert_response :success
  end

  test "should update project_detail" do
    put :update, id: @project_detail, project_detail: { budgettype_id: @project_detail.budgettype_id, contract_date: @project_detail.contract_date, contract_id: @project_detail.contract_id, project_id: @project_detail.project_id, project_name: @project_detail.project_name, project_year: @project_detail.project_year, vender_id: @project_detail.vender_id }
    assert_redirected_to project_detail_path(assigns(:project_detail))
  end

  test "should destroy project_detail" do
    assert_difference('ProjectDetail.count', -1) do
      delete :destroy, id: @project_detail
    end

    assert_redirected_to project_details_path
  end
end
