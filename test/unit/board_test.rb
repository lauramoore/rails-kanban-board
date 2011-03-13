require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  setup do
     @board = Board.new()
  end
  test "board has panels" do
    assert @board.panels != nil
    assert @board.panels.size > 0
  end
  
  test "board has backlog panel" do
 	p = @board.getPanel( :backlog )
 	assert p.is_a?(Panel), 'wrong class on panel'
  	assert p.display_text == 'Backlog', 'wrong display text on backlog'
  	assert p.key == nil, 'key not nil'
  end
end
