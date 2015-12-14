require 'test_helper'

class FriendControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get block" do
    get :block
    assert_response :success
  end

end
