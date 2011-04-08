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
end
