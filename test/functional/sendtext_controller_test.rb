require 'test_helper'

class SendtextControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get send_text_message" do
    get :send_text_message
    assert_response :success
  end

end
