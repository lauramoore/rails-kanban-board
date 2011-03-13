class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :task
      t.text :notes
      t.date :need_by
      t.string :delegatee
      t.integer :column_ord

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
