require 'test_helper'

class FriendControllerTest < ActionController::TestCase
  test "should get friend_list" do
    get :friend_list
    assert_response :success
  end

end
