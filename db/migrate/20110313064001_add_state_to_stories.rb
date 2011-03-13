class AddStateToStories < ActiveRecord::Migration
  def self.up
  	add_column :stories, :state, :string
  end

  def self.down
  	remove_column :stories, :state
  end
end
