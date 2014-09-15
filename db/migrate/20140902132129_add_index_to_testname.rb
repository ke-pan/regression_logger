class AddIndexToTestname < ActiveRecord::Migration
  def change
    add_index :tests, :vectorname
  end
end
