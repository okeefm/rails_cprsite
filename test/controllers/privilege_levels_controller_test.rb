require 'test_helper'

class PrivilegeLevelsControllerTest < ActionController::TestCase
  setup do
    @privilege_level = privilege_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privilege_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privilege_level" do
    assert_difference('PrivilegeLevel.count') do
      post :create, privilege_level: { name: @privilege_level.name }
    end

    assert_redirected_to privilege_level_path(assigns(:privilege_level))
  end

  test "should show privilege_level" do
    get :show, id: @privilege_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privilege_level
    assert_response :success
  end

  test "should update privilege_level" do
    patch :update, id: @privilege_level, privilege_level: { name: @privilege_level.name }
    assert_redirected_to privilege_level_path(assigns(:privilege_level))
  end

  test "should destroy privilege_level" do
    assert_difference('PrivilegeLevel.count', -1) do
      delete :destroy, id: @privilege_level
    end

    assert_redirected_to privilege_levels_path
  end
end
