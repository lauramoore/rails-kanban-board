class ChangeTableStoryAddStateDefault < ActiveRecord::Migration
  def self.up
  	Story.update_all( "state = 'B'", "state IS NULL" )
  	Story.update_all( "state = 'B'", "state = ''" )
  end

  def self.down
  Story.update_all( "state = NULL", "state = 'B'" )
  end
end
