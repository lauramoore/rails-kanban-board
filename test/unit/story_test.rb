require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "B is default state" do
  	story = Story.new()
  	assert_equal story.state, 'B'
  end
  
  test "can find more than one story" do
  	assert_equal Story.order("column_ord").find_all_by_state("B").size, 2
  end
end
