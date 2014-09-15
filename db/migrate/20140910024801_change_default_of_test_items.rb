class ChangeDefaultOfTestItems < ActiveRecord::Migration
  def change
    change_column :test_items, :status, :string, default: 'not test'
  end
end
