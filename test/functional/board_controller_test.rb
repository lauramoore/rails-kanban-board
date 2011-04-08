require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
    assert_select '.backlog', 1, 'board shows backlog section'
    assert_select '.active', 1, 'board shows active section'
    assert_select '.priority', 1, 'board shows priority section'
    assert_select '.delegated', 1, 'board shows delegated section'
    assert_select '.complete', 1, 'board shows completed section'
    assert_select '.story', Story.count
  end
  
  test "should drop and save" do
  	  story = stories(:backlog)
  	  old_status = story.status()
      put :drop, :id => story.to_param, :status => 'P'
  end


end
