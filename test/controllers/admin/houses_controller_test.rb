require 'test_helper'

class Admin::HousesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_houses_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_houses_show_url
    assert_response :success
  end

end
