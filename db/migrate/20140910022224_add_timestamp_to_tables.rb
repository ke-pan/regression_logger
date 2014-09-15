class AddTimestampToTables < ActiveRecord::Migration
  def change
    add_column :test_sets, :created_at, :datetime
    add_column :test_sets, :updated_at, :datetime
    add_column :regressions, :created_at, :datetime
    add_column :regressions, :updated_at, :datetime
    add_column :test_items, :created_at, :datetime
    add_column :test_items, :updated_at, :datetime
  end
end
