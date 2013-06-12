require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get contact_me" do
    get :contact_me
    assert_response :success
  end

end
