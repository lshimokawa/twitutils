require 'test_helper'

class UtilsControllerTest < ActionController::TestCase
  test "should get hashtag" do
    get :hashtag
    assert_response :success
  end

end
