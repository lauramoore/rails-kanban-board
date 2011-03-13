require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  @board = Board.new()
  test "the truth" do
    assert true
  end
  
  test "board has backlog panel" do
 # 	p = @board.get_panel(:b)
 # 	p.is_a(Panel)
 # 	p.display_text = 'backlog'
  end
end
