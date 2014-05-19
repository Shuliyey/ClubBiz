require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get like_club" do
    get :like_club
    assert_response :success
  end

end
