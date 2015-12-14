require 'test_helper'

class MessageControllerTest < ActionController::TestCase
  test "should get inbox" do
    get :inbox
    assert_response :success
  end

  test "should get send" do
    get :send
    assert_response :success
  end

end
