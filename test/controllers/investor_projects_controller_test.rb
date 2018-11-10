require 'test_helper'

class InvestorProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor_project = investor_projects(:one)
  end

  test "should get index" do
    get investor_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_investor_project_url
    assert_response :success
  end

  test "should create investor_project" do
    assert_difference('InvestorProject.count') do
      post investor_projects_url, params: { investor_project: { investor_id: @investor_project.investor_id, project_id: @investor_project.project_id } }
    end

    assert_redirected_to investor_project_url(InvestorProject.last)
  end

  test "should show investor_project" do
    get investor_project_url(@investor_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_investor_project_url(@investor_project)
    assert_response :success
  end

  test "should update investor_project" do
    patch investor_project_url(@investor_project), params: { investor_project: { investor_id: @investor_project.investor_id, project_id: @investor_project.project_id } }
    assert_redirected_to investor_project_url(@investor_project)
  end

  test "should destroy investor_project" do
    assert_difference('InvestorProject.count', -1) do
      delete investor_project_url(@investor_project)
    end

    assert_redirected_to investor_projects_url
  end
end
