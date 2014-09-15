class RenameTests < ActiveRecord::Migration
  def change
    rename_table :tests, :test_items
  end
end
