require 'test_helper'

class PanelTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "can create new panel" do
  	p = Panel.new('test1', :key)
  end
  
  test "can have nil as a key" do
  	p = Panel.new('test2', nil)
  end
end
