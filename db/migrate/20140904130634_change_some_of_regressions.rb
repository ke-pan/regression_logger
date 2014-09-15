class ChangeSomeOfRegressions < ActiveRecord::Migration
  def change
    rename_column :regressions, :tests_count, :test_items_count
    add_column :regressions, :name, :string
  end
end
