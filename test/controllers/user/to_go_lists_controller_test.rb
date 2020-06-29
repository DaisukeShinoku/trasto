require 'test_helper'

class User::ToGoListsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_to_go_lists_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_to_go_lists_destroy_url
    assert_response :success
  end

  test "should get index" do
    get user_to_go_lists_index_url
    assert_response :success
  end

end
