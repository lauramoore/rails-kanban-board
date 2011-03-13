require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
    assert_select '.backlog', 1, 'board shows backlog section'
    assert_select '.story', Story.count
  end
  
 

end
