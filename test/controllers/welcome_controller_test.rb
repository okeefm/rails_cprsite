require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get handsonly" do
    get :handsonly
    assert_response :success
  end

  test "should get learn" do
    get :learn
    assert_response :success
  end

  test "should get aed" do
    get :aed
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

end
