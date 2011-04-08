require 'test_helper'

class BoardControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
    assert_select '.backlog', 1, 'board shows backlog section' do
    	assert_select 'li', assigns[:backlog].size
    end
    assert_select '.active', 1, 'board shows active section' do
    	assert_select 'li', 0
    end
    assert_select '.priority', 1, 'board shows priority section' do
    	assert_select 'li', 1
    end
    assert_select '.delegated', 1, 'board shows delegated section' do
    	assert_select 'li', 1
    end
    assert_select '.complete', 1, 'board shows completed section' do
    	assert_select 'li', 1
    end
    assert_select '.story', Story.count
  end
  
  test "should drop and save" do
  	  story = stories(:backlog)
  	  assert_difference( %[Story.count :conditions => 'state = "P"']) do
         put :drop, :id => story.to_param, :state => 'P' , :column_ord => 10
     end
     assert_equal story.id, Story.order("column_ord").find_last_by_state("P").id
     
  end

end
