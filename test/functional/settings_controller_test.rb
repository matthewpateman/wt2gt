require 'test_helper'

class SettingsControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get shipping" do
    get :shipping
    assert_response :success
  end

  test "should get payment" do
    get :payment
    assert_response :success
  end

  test "should get networks" do
    get :networks
    assert_response :success
  end

end
