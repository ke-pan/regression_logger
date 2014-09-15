class ChangeSomeOfSchema < ActiveRecord::Migration
  def change
    rename_column :regressions, :tests_set_id, :test_set_id
    add_column :test_items, :regression_id, :integer
  end
end
