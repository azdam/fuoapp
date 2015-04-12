require 'test_helper'

class AdminstratorsControllerTest < ActionController::TestCase
  setup do
    @adminstrator = adminstrators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminstrators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminstrator" do
    assert_difference('Adminstrator.count') do
      post :create, adminstrator: { auth_level: @adminstrator.auth_level, email: @adminstrator.email, employee_id: @adminstrator.employee_id, firstname: @adminstrator.firstname, lastname: @adminstrator.lastname }
    end

    assert_redirected_to adminstrator_path(assigns(:adminstrator))
  end

  test "should show adminstrator" do
    get :show, id: @adminstrator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminstrator
    assert_response :success
  end

  test "should update adminstrator" do
    patch :update, id: @adminstrator, adminstrator: { auth_level: @adminstrator.auth_level, email: @adminstrator.email, employee_id: @adminstrator.employee_id, firstname: @adminstrator.firstname, lastname: @adminstrator.lastname }
    assert_redirected_to adminstrator_path(assigns(:adminstrator))
  end

  test "should destroy adminstrator" do
    assert_difference('Adminstrator.count', -1) do
      delete :destroy, id: @adminstrator
    end

    assert_redirected_to adminstrators_path
  end
end
